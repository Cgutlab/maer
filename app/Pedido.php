<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    protected $table    = "pedidos";
    protected $fillable = [
        'fecha', 'iva', 'subtotal', 'total', 'user_id',
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function productos()
    {
        return $this->belongsToMany('App\Producto', 'pedido_producto')->withPivot('cantidad', 'costo', 'codigo', 'medida');
    }

    public function descuento()
    {
        return $this->belongsTo('App\Descuento');
    }

    public function getfechaAttribute($date)
    {
        return $date = \Carbon\Carbon::parse($date)->format('d-m-Y');
    }

    public function setfechaAttribute($date)
    {
        $this->attributes['fecha'] = \Carbon\Carbon::parse($date)->format('Y-m-d');
    }
}
