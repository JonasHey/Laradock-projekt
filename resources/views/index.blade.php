@extends('layouts.app')

@section('content')
    <div class="container-fluid mt-5">
        <div class="card">
            <div class="card-header">
                <h1>Kennzeichen – Datenbank</h1>
            </div>
            <form action="/search" method="POST">
                @csrf
                <div class="card-body">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="kennzeichen_input">Kennzeichen Eingeben</span>
                        <input type="text" class="form-control" placeholder="z.B: 'DA'" name="kennzeichen_input" aria-label="Username" aria-describedby="kennzeichen_input">
                    </div>
                    <div class="d-grid gap-2">
                        <button class="btn btn-outline-success" type="submit">Suchen</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection