@extends('adm.layouts.frame')

@section('titulo', 'Videos')

@section('contenido')
	    @if(count($errors) > 0)
<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
    <ul>
        @foreach($errors->all() as $error)
        <li>
            {!!$error!!}
        </li>
        @endforeach
    </ul>
</div>
@endif
		@if(session('success'))
<div class="col s12 card-panel green lighten-4 green-text text-darken-4">
    {{ session('success') }}
</div>
@endif
<div class="row">
    <div class="col s12">
        <table class="highlight bordered">
            <thead>
                <td>
                    Nombre
                </td>
                <td class="text-right">
                    Acciones
                </td>
            </thead>
            <tbody>
                @foreach($videos as $video)
                <tr>
                    <td>
                        {!!$video->nombre!!}
                    </td>
                    <td class="text-right">
                        <a href="{{ route('videos.edit',$video->id)}}">
                            <i class="material-icons">
                                create
                            </i>
                        </a>
                        {!!Form::open(['class'=>'en-linea', 'route'=>['videos.destroy', $video->id], 'method' => 'DELETE'])!!}
                        <button class="submit-button" onclick="return confirm('¿Realmente deseas borrar la video?')" type="submit">
                            <i class="material-icons red-text">
                                cancel
                            </i>
                        </button>
                        {!!Form::close()!!}
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <br>
        <a href="{{ route('videos.create') }}">
            <div class="col l12 s12 no-padding" href="">
                <button class="boton btn-large right" name="action" type="submit">
                    Nuevo
                </button>
            </div>
        </a>
    </div>
</div>
<script src="{{ asset('js/eliminar.js') }}" type="text/javascript">
</script>
@endsection