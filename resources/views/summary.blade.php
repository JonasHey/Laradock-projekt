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
        <div class="d-flex card-footer justify-content-between">
            <form action="/export/{{$kfz->id}}" method="POST">
                @csrf
                <input type="hidden" name="export_type" value="xml">
                <button class="btn btn-info" type="submit">Xml Export</button>
            </form>
            <form action="/export/{{$kfz->id}}" method="POST">
                @csrf
                <input type="hidden" name="export_type" value="csv">
                <button class="btn btn-warning" type="submit">Csv Export</button>
            </form>
            <form action="/export/{{$kfz->id}}" method="POST">
                @csrf
                <input type="hidden" name="export_type" value="json">
                <button class="btn btn-success" type="submit">Json Export</button>
            </form>
        </div>
    </div>
</div>
@endsection