<?php

namespace App\Interfaces;

use App\Models\KfzDb;

interface Export
{
    public function startExport(): void;

    public function getFilePath(): string;

    public function getFileName(): string;
}