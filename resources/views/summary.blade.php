@extends('layouts.app')

@section('content')
<div class="container-fluid mt-5">
    <div class="card">
        <div class="card-header">
            <h1>Nähere Informationen zu dem Kennzeichen: {{$kfz->kfz_key ?? 'Kein Datensatz vorhanden'}}</h1>
        </div>
        <div class="card-body">
            <h3>Kreis:</h3>
            <p>{{$kfz->kfz_kreis ?? 'Kein Datensatz vorhanden'}}</p>
            <h3>Bundesland:</h3>
            <p>{{$kfz->kfz_state ?? 'Kein Datensatz vorhanden'}}</p>
            <h3>Kreisstadt:</h3>
            <p>{{$kfz->kfz_city ?? 'Kein Datensatz vorhanden'}}</p>
            <h3>Unterscheidungszeichen:</h3>
            <p>{{$kfz->kfz_key ?? 'Kein Datensatz vorhanden'}}</p>
        </div>
    </div>
</div>
@endsection