<?php

namespace App\Http\Controllers\Adm;

use App\Modelo;
use App\Rubro;
use App\Categoria;
use App\Aplicacion;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ProductosRequest;
use App\Imgproducto;
use App\Categoria_pregunta;
use App\Producto;
use App\Producto_relacionado;

class ProductosController extends Controller
{
    //'nombre', 'ventajas', 'descripcion', 'contenido', 'categoria_id', 'caracteristicas', 'manual', 'despiece', 'visible', 'orden', 'presentacion', 'imagen_presentacion', 'precio', 'rubro_id', 'modelo_id', 

    public function index()
    {
        $ready = 0;
        $productos = producto::orderBy('nombre', 'ASC')->get();
        return view('adm.productos.index', compact('productos', 'ready'));
    }

    public function create()
    {
        $relacionados = Producto::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $categoria_preguntas = Categoria_pregunta::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $aplicaciones = Aplicacion::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $categorias = Categoria::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $modelos = Modelo::orderBy('codigo', 'ASC')->pluck('codigo', 'id')->all();
        $rubros = Rubro::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        return view('adm.productos.create', compact('categorias', 'rubros', 'modelos', 'aplicaciones', 'categoria_preguntas', 'relacionados'));
    }

    public function store(Request $request)
    {

        $producto                    = new Producto();
        $producto->nombre            = $request->nombre;
        $producto->ventajas          = $request->ventajas;
        $producto->descripcion       = $request->descripcion;
        $producto->contenido         = $request->contenido;
        $producto->categoria_id      = $request->categoria_id;
        $producto->caracteristicas   = $request->caracteristicas;
        $producto->visible           = $request->visible;
        $producto->categoria_pregunta_id= $request->categoria_pregunta_id;
        $producto->orden             = $request->orden;
        $producto->aplica_desc             = $request->aplica_desc;
        $producto->iva             = $request->iva;
        $producto->presentacion      = $request->presentacion;
        $producto->precio            = $request->precio;
        $producto->precio_sin_oferta = $request->precio_sin_oferta;
        $producto->tipo           = $request->tipo;
        $id              = Producto::all()->max('id');
        $id++;
        /*foreach ($request->relacionados as $rela) {
            $relacionado = new Producto_relacionado();
            $relacionado->producto_a = $id;
            $relacionado->producto_b = 0;
            $relacionado->producto_id = $request->producto->id;
            $relacionado->save();
        }*/
        if ($request->hasFile('manual')) {
            if ($request->file('manual')->isValid()) {
                $file = $request->file('manual');
                $path = public_path('img/producto/manual/');
                $request->file('manual')->move($path, $id . '_' . $file->getClientOriginalName());
                $producto->manual = 'img/producto/manual/' . $id . '_' . $file->getClientOriginalName();
            }
        }
        if ($request->hasFile('despiece')) {
            if ($request->file('despiece')->isValid()) {
                $file = $request->file('despiece');
                $path = public_path('img/producto/despiece/');
                $request->file('despiece')->move($path, $id . '_' . $file->getClientOriginalName());
                $producto->despiece = 'img/producto/despiece/' . $id . '_' . $file->getClientOriginalName();
            }
        }

        if ($request->hasFile('imagen_presentacion')) {
            if ($request->file('imagen_presentacion')->isValid()) {
                $file = $request->file('imagen_presentacion');
                $path = public_path('img/producto/imagen_presentacion/');
                $request->file('imagen_presentacion')->move($path, $id . '_' . $file->getClientOriginalName());
                $producto->imagen_presentacion = 'img/producto/imagen_presentacion/' . $id . '_' . $file->getClientOriginalName();
            }
        }

        $producto->save();
        $producto->rubros()->sync($request->get('rubros'));
        $producto->aplicaciones()->sync($request->get('aplicaciones'));
        $producto->modelos()->sync($request->get('modelos'));
        return redirect()->route('productos.index');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $relacionados = Producto::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $categoria_preguntas = Categoria_pregunta::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $aplicaciones = Aplicacion::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $producto                    = Producto::find($id);
        $categorias = Categoria::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        $modelos = Modelo::orderBy('codigo', 'ASC')->pluck('codigo', 'id')->all();
        $rubros = Rubro::orderBy('nombre', 'ASC')->pluck('nombre', 'id')->all();
        return view('adm.productos.edit', compact('categorias', 'rubros', 'modelos', 'producto', 'aplicaciones', 'categoria_preguntas', 'relacionados'));
    }

    public function update(Request $request, $id)
    {
        $producto                    = Producto::find($id);

        //dd($request->relacionados);
    /*    foreach ($request->relacionados as $rela) {
            $relacionado = new Producto_relacionado();
            $relacionado->producto_a = $id;
            $relacionado->producto_b = 0;
            $relacionado->producto_id = $request->producto->id;
            $relacionado->save();
        }*/

        $producto->nombre            = $request->nombre;
        $producto->ventajas          = $request->ventajas;
        $producto->descripcion       = $request->descripcion;
        $producto->contenido         = $request->contenido;
        $producto->categoria_id      = $request->categoria_id;
        $producto->caracteristicas   = $request->caracteristicas;
        $producto->visible           = $request->visible;
        $producto->categoria_pregunta_id= $request->categoria_pregunta_id;
        $producto->orden             = $request->orden;
        $producto->aplica_desc             = $request->aplica_desc;
        $producto->iva             = $request->iva;
        $producto->presentacion      = $request->presentacion;
        $producto->precio            = $request->precio;
        $producto->precio_sin_oferta = $request->precio_sin_oferta;
        $producto->tipo           = $request->tipo;
        $id              = Producto::all()->max('id');
        $id++;
        if ($request->hasFile('manual')) {
            if ($request->file('manual')->isValid()) {
                $file = $request->file('manual');
                $path = public_path('img/producto/manual/');
                $request->file('manual')->move($path, $id . '_' . $file->getClientOriginalName());
                $producto->manual = 'img/producto/manual/' . $id . '_' . $file->getClientOriginalName();
            }
        }
        if ($request->hasFile('despiece')) {
            if ($request->file('despiece')->isValid()) {
                $file = $request->file('despiece');
                $path = public_path('img/producto/despiece/');
                $request->file('despiece')->move($path, $id . '_' . $file->getClientOriginalName());
                $producto->despiece = 'img/producto/despiece/' . $id . '_' . $file->getClientOriginalName();
            }
        }

        if ($request->hasFile('imagen_presentacion')) {
            if ($request->file('imagen_presentacion')->isValid()) {
                $file = $request->file('imagen_presentacion');
                $path = public_path('img/producto/imagen_presentacion/');
                $request->file('imagen_presentacion')->move($path, $id . '_' . $file->getClientOriginalName());
                $producto->imagen_presentacion = 'img/producto/imagen_presentacion/' . $id . '_' . $file->getClientOriginalName();
            }
        }
        $producto->update();
        $producto->aplicaciones()->sync($request->get('aplicaciones'));
        $producto->modelos()->sync($request->get('modelos'));
        $producto->rubros()->sync($request->get('rubros'));
        return redirect()->route('productos.index');
    }

    public function destroy($id)
    {
        $producto = producto::find($id);
        $producto->delete();
        return redirect()->route('productos.index');
    }

    //admin de imagenes
    public function imagenes($id)
    {
        $imagenes = Imgproducto::orderBy('id', 'ASC')->Where('producto_id', $id)->get();
        $producto = producto::find($id);
        return view('adm.productos.imagenes')->with(compact('imagenes', 'producto'));
    }

    public function nuevaimagen(Request $request, $id)
    {
        if ($request->HasFile('file')) {
            foreach ($request->file as $file) {
                $filename = $file->getClientOriginalName();
                $path     = public_path('img/producto/');
                $file->move($path, $id . '_' . $file->getClientOriginalName());
                $imagen              = new Imgproducto;
                $imagen->imagen   = 'img/producto/' . $id . '_' . $file->getClientOriginalName();
                $imagen->producto_id = $id;
                $imagen->save();
            }
        }
        $imagenes = Imgproducto::orderBy('id', 'ASC')->Where('producto_id', $id)->get();

        $producto = producto::find($id);
        return view('adm.productos.imagenes')->with(compact('imagenes', 'producto'));
    }

    public function destroyimg($id)
    {
        $imagen = Imgproducto::find($id);
        $idpro  = $imagen->producto_id;
        $imagen->delete();
        $imagenes = Imgproducto::orderBy('id', 'ASC')->Where('producto_id', $idpro)->get();

        $producto = producto::find($idpro);
        return view('adm.productos.imagenes')->with(compact('imagenes', 'producto'));
    }
}
