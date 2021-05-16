@extends('layouts.app')

@section('content')
    <div class="card mt-5">
        <div class="card-header">
            <h1>Kennzeichen – Datenbank</h1>
        </div>
        <div class="card-body">
            <form action="/search" method="POST">
                @csrf
                <div class="input-group mb-2">
                    <span class="input-group-text" id="kennzeichen_input">Kennzeichen Eingeben</span>
                    <input type="text" class="form-control" placeholder="z.B: 'DA'" name="kennzeichen_input" aria-label="kennzeichen" aria-describedby="kennzeichen_input">
                </div>
                <input type="hidden" name="search_type" value="kennzeichen">
                <div class="d-grid gap-2 mb-5">
                    <button class="btn btn-outline-success" type="submit">Nach Kennzeichen suchen</button>
                </div>
            </form>
            <form action="/search" method="POST">
                @csrf
                <div class="input-group mb-2">
                    <span class="input-group-text" id="bundesland_input">Bundesland Eingeben</span>
                    <input type="text" class="form-control" placeholder="z.B: 'Hessen'" name="bundesland_input" aria-label="bundesland" aria-describedby="bundesland_input">
                </div>
                <input type="hidden" name="search_type" value="bundesland">
                <div class="d-grid gap-2 mb-5">
                    <button class="btn btn-outline-info" type="submit">Nach Bundesland suchen</button>
                </div>
            </form>
            <form action="/search" method="POST">
                @csrf
                <div class="input-group mb-2">
                    <span class="input-group-text" id="kreisstadt_input">Kreisstadt Eingeben</span>
                    <input type="text" class="form-control" placeholder="z.B: 'Darmstadt'" name="kreisstadt_input" aria-label="kreisstadt" aria-describedby="kreisstadt_input">
                </div>
                <input type="hidden" name="search_type" value="kreisstadt">
                <div class="d-grid gap-2">
                    <button class="btn btn-outline-warning" type="submit">Nach Kreisstadt suchen</button>
                </div>
            </form>
        </div>
    </div>
@endsection