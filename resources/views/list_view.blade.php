@extends('layouts.app')

@section('content')
    <div class="navigation-header">
        <a href="/" class="back-arrow-icon d-flex flex-column align-items-center">
            <img class="back-arrow" src="{{ URL::to('/') }}/images/arrow_circle_back.svg" alt="">
            <span class="back-arrow-text">Zurück</span>
        </a>
    </div>
    <div class="card mt-5">
        <div class="card-header">
            <h1>Ergebnisse:</h1>
        </div>
        <div class="card-body">
            <div class="list-group custom-list">
                @foreach ($data as $dataObject)
                    <a href="/show/{{$dataObject->id}}" class="list-group-item list-group-item-action" aria-current="true">
                        {{$loop->index +1}}. Kennzeichenkürzel: {{$dataObject->kfz_key}}, Bundesland: {{$dataObject->kfz_state}}, Kreisstadt: {{$dataObject->kfz_city}}, Kreis: {{$dataObject->kfz_kreis}}
                    </a>
                @endforeach
            </div>
        </div>
    </div>
@endsection