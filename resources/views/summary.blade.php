@extends('layouts.app')

@section('content')
    <div class="navigation-header d-flex flex-column align-items-center">
        <button onclick="window.history.back()" class="back-arrow-icon d-flex flex-column align-items-center">
            <img class="back-arrow" src="{{ URL::to('/') }}/images/arrow_circle_back.svg" alt="">
            <span class="back-arrow-text">Zurück</span>
        </button>
        <a href="/" class="home-icon d-flex flex-column align-items-center mt-5">
            <img class="home-icon-svg" src="{{ URL::to('/') }}/images/home.svg" alt="">
            <span class="home-icon-text">Startseite</span>
        </a>
    </div>
    <div class="card mt-5">
        <div class="card-header">
            <h1>Nähere Informationen zu dem Kennzeichen: {{$kfz->kfz_key ?? 'Kein Datensatz vorhanden'}}</h1>
        </div>
        <div class="card-body">
            <h3>Kreis:</h3>
            <ul>
                <li>
                    <p>{{$kfz->kfz_kreis ?? 'Kein Datensatz vorhanden'}}</p>
                </li>
            </ul>
            <h3>Bundesland:</h3>
            <ul>
                <li>
                    <p>{{$kfz->kfz_state ?? 'Kein Datensatz vorhanden'}}</p>
                </li>
            </ul>
            <h3>Kreisstadt:</h3>
            <ul>
                <li>
                    <p>{{$kfz->kfz_city ?? 'Kein Datensatz vorhanden'}}</p>
                </li>
            </ul>
            <h3>Unterscheidungszeichen:</h3>
            <ul>
                <li>
                    <p>{{$kfz->kfz_key ?? 'Kein Datensatz vorhanden'}}</p>
                </li>
            </ul>
            <h3>Weitere Informationen:</h3>
            <ul>
                <li>
                    <p><a class="btn btn-outline-primary" href="https://de.wikipedia.org/wiki/{{$kfz->kfz_city}}"><span style="font-weight: 700">Wikipedia ({{$kfz->kfz_city}})</span></a></p>
                </li>
                <li>
                    <p><a class="btn btn-outline-primary" href="https://de.wikipedia.org/wiki/{{$kfz->kfz_kreis}}"><span style="font-weight: 700">Wikipedia ({{$kfz->kfz_kreis}})</span></a></p>
                </li>
                <li>
                    <p><a class="btn btn-outline-success" href="https://www.google.com/maps/search/?api=1&query={{$kfz->kfz_city}}"><span style="font-weight: 700">Google-Maps ({{$kfz->kfz_city}})</span></a></p>
                </li>
                <li>
                    <p><a class="btn btn-outline-success" href="https://www.google.com/maps/search/?api=1&query={{$kfz->kfz_kreis}}"><span style="font-weight: 700">Google-Maps ({{$kfz->kfz_kreis}})</span></a></p>
                </li>
            </ul>
        </div>
        <div class="card-footer">
            <h3>Export Optionen:</h3>
            <div class="btn-container">
                <ul>
                    <li>
                        <form action="/export/{{$kfz->id}}" method="POST">
                            @csrf
                            <input type="hidden" name="export_type" value="xml">
                            <button class="btn btn-warning mb-2" type="submit">Xml Export</button>
                        </form>
                    </li>
                    <li>
                        <form action="/export/{{$kfz->id}}" method="POST">
                            @csrf
                            <input type="hidden" name="export_type" value="csv">
                            <button class="btn btn-warning mb-2" type="submit">Csv Export</button>
                        </form>
                    </li>
                    <li>
                        <form action="/export/{{$kfz->id}}" method="POST">
                            @csrf
                            <input type="hidden" name="export_type" value="json">
                            <button class="btn btn-warning" type="submit">Json Export</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection