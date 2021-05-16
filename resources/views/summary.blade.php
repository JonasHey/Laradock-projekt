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
        <a href="#notes" class="note-icon d-flex flex-column align-items-center mt-5">
            <img class="note-icon-svg" src="{{ URL::to('/') }}/images/note.svg" alt="">
            <span class="note-icon-text">Notizen</span>
        </a>
    </div>
    <div class="card mt-5">
        <div class="card-header d-flex justify-content-between">
            <h1>Nähere Informationen zu dem Kennzeichen: {{$kfz->kfz_key ?? 'Kein Datensatz vorhanden'}}</h1>
            @if (!$isFavorite)
                <form action="/favorite/{{$kfz->id}}" method="POST">
                    @csrf
                    <input type="hidden" name="favorite_type" value="add">
                    <button class="btn btn-success">Zu Favoriten hinzufügen</button>
                </form>
            @else
                <form action="/favorite/{{$kfz->id}}" method="POST">
                    @csrf
                    <input type="hidden" name="favorite_type" value="delete">
                    <button class="btn btn-danger">Favorit entfernen</button>
                </form>
            @endif
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
    <div class="card mt-5 mb-5" id="notes">
        <div class="card-header d-flex justify-content-between">
            <h1>Notizen zu dem Kennzeichen: {{$kfz->kfz_key ?? 'Kein Datensatz vorhanden'}}</h1>
        </div>
        <div class="card-body">
            @if ($notes == "empty")
                <h5>Keine Notizen Vorhanden!</h5>
            @else
                @foreach ($notes as $note)
                    <h5>Notiz {{$loop->index +1}}:</h5>
                    <ul>
                        <li>
                            <p>
                                {{$note->note}}
                                <br>
                                <a href="/notes/{{$kfz->id}}/delete/{{$note->id}}" class="delete-note-link">(notiz löschen)</a>
                            </p>
                        </li>
                    </ul>
                @endforeach
            @endif
        </div>
        <div class="card-footer">
            <h5>Notiz Hinzufügen:</h5>
            <form id="note_form" action="/notes/{{$kfz->id}}" method="POST">
                @csrf
                <div class="form-floating">
                    <textarea class="form-control" form="note_form" placeholder="Hier können Sie eine Notiz schreiben" id="note_textarea" name="note_textarea"></textarea>
                    <label for="note_textarea">Hier können Sie eine Notiz schreiben</label>
                </div>
                <div class="d-grid gap-2 mt-1">
                    <button class="btn btn-sm btn-success" type="submit">Notiz speichern</button>
                </div>
            </form>
        </div>
    </div>
@endsection
