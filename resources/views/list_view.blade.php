@extends('layouts.app')

@section('content')
<div class="container-fluid mt-5">
    <div class="card">
        <div class="card-header">
            <h1>Ergebnisse:</h1>
        </div>
        <div class="card-body">
            <div class="list-group">
                @foreach ($data as $dataObject)
                    <a href="/show/{{$dataObject->id}}" class="list-group-item list-group-item-action" aria-current="true">
                        {{$loop->index +1}}. Kennzeichenkürzel: {{$dataObject->kfz_key}}, Bundesland: {{$dataObject->kfz_state}}, Kreisstadt: {{$dataObject->kfz_city}}, Kreis: {{$dataObject->kfz_kreis}}
                    </a>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endsection