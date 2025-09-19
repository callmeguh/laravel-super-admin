@extends('layout.layout')

@php
    $title='Super Admin';
    $subTitle = 'Dashboard';
    $script= '<script src="' . asset('assets/js/homeOneChart.js') . '"></script>';
@endphp

@section('content')
<!-- Kartu Ringkasan -->
<div class="row row-cols-1 row-cols-md-2 gy-4 mb-4">
    <!-- Total Pengguna -->
    <div class="col">
        <div class="card shadow-none border bg-gradient-start-1 h-100">
            <div class="card-body p-20">
                <div class="d-flex flex-wrap align-items-center justify-content-between gap-3">
                    <div>
                        <p class="fw-medium text-primary-light mb-1">Total Pengguna</p>
                        <h6 class="mb-0">{{ number_format($totalUsers) }}</h6>
                    </div>
                    <div class="w-50-px h-50-px bg-cyan rounded-circle d-flex justify-content-center align-items-center">
                        <iconify-icon icon="gridicons:multiple-users" class="text-white text-2xl mb-0"></iconify-icon>
                    </div>
                </div>
                <p class="fw-medium text-sm text-primary-light mt-12 mb-0 d-flex align-items-center gap-2">
                    <span class="d-inline-flex align-items-center gap-1 text-success-main">
                        <iconify-icon icon="bxs:up-arrow" class="text-xs"></iconify-icon> +{{ number_format($newUsersLast30) }}
                    </span>
                    Pengguna 30 hari terakhir
                </p>
            </div>
        </div>
    </div>

    <!-- Total Transaksi -->
    <div class="col">
        <div class="card shadow-none border bg-gradient-start-4 h-100">
            <div class="card-body p-20">
                <div class="d-flex flex-wrap align-items-center justify-content-between gap-3">
                    <div>
                        <p class="fw-medium text-primary-light mb-1">Total Transaksi</p>
                        <h6 class="mb-0">Rp {{ number_format($totalTransactions, 0, ',', '.') }}</h6>
                    </div>
                    <div class="w-50-px h-50-px bg-success-main rounded-circle d-flex justify-content-center align-items-center">
                        <iconify-icon icon="solar:wallet-bold" class="text-white text-2xl mb-0"></iconify-icon>
                    </div>
                </div>
                <p class="fw-medium text-sm text-primary-light mt-12 mb-0 d-flex align-items-center gap-2">
                    <span class="d-inline-flex align-items-center gap-1 text-success-main">
                        <iconify-icon icon="bxs:up-arrow" class="text-xs"></iconify-icon> 
                        +Rp {{ number_format($transactionsLast30, 0, ',', '.') }}
                    </span>
                    Transaksi 30 hari terakhir
                </p>
            </div>
        </div>
    </div>
</div>

<!-- Grafik & Aktivitas -->
<div class="row gy-4">
    <!-- Grafik Total Pengguna -->
    <div class="col-12 col-md-6">
        <div class="card h-100">
            <div class="card-body">
                <h6 class="mb-3 fw-bold text-lg">Grafik Total Pengguna</h6>
                <div id="userChart" style="height:300px;"></div>
            </div>
        </div>
    </div>

    <!-- Total Aktivitas -->
    <div class="col-12 col-md-6">
        <div class="card h-100">
            <div class="card-body">
                <h6 class="mb-3 fw-bold text-lg">Total Aktivitas</h6>

                <div class="mb-3">
    <div class="d-flex justify-content-between">
        <span>Transaksi Disetujui</span>
        <span class="fw-bold">{{ number_format($approvedTransactions) }}</span>
    </div>
    <div class="progress h-6-px">
        <div class="progress-bar bg-success" style="width: {{ $approvedTransactions ? ($approvedTransactions / max(1, $totalUsers)) * 100 : 0 }}%"></div>
    </div>
</div>

<div class="mb-3">
    <div class="d-flex justify-content-between">
        <span>Transaksi Pending</span>
        <span class="fw-bold">{{ number_format($pendingTransactions) }}</span>
    </div>
    <div class="progress h-6-px">
        <div class="progress-bar bg-warning" style="width: {{ $pendingTransactions ? ($pendingTransactions / max(1, $totalUsers)) * 100 : 0 }}%"></div>
    </div>
</div>

<div class="mb-3">
    <div class="d-flex justify-content-between">
        <span>Transaksi Dibatalkan</span>
        <span class="fw-bold">{{ number_format($canceledTransactions) }}</span>
    </div>
    <div class="progress h-6-px">
        <div class="progress-bar bg-danger" style="width: {{ $canceledTransactions ? ($canceledTransactions / max(1, $totalUsers)) * 100 : 0 }}%"></div>
    </div>
</div>

<div>
    <div class="d-flex justify-content-between">
        <span>Titip Kirim</span>
        <span class="fw-bold">{{ number_format($deliveryTransactions) }}</span>
    </div>
    <div class="progress h-6-px">
        <div class="progress-bar bg-info" style="width: {{ $deliveryTransactions ? ($deliveryTransactions / max(1, $totalUsers)) * 100 : 0 }}%"></div>
    </div>
</div>

            </div>
        </div>
    </div>
</div>

<!-- Tabel Transaksi -->
<div class="row mt-4">
    <div class="col-12">
        <div class="card h-100">
            <div class="card-body">
                <h6 class="mb-3 fw-bold text-lg">Transaksi Terbaru</h6>
                <div class="table-responsive">
                    <table class="table table-hover align-middle">
                        <thead class="table-light">
                            <tr>
                                <th>ID</th>
                                <th>Pembeli</th>
                                <th>Traveler</th>
                                <th>Status Pembayaran</th>
                                <th>Tanggal</th>
                                <th>Jumlah</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($latestTransactions as $trx)
                                <tr>
                                    <td>{{ $trx->id }}</td>
                                    <td>{{ $trx->buyer->name ?? '-' }}</td>
                                    <td>{{ $trx->traveler->name ?? '-' }}</td>
                                    <td>
                                        @if($trx->payment_status == 'approved')
                                            <span class="badge bg-success">Disetujui</span>
                                        @elseif($trx->payment_status == 'pending')
                                            <span class="badge bg-warning">Pending</span>
                                        @else
                                            <span class="badge bg-secondary">{{ ucfirst($trx->payment_status) }}</span>
                                        @endif
                                    </td>
                                    <td>{{ $trx->created_at->format('Y-m-d') }}</td>
                                    <td>Rp {{ number_format($trx->total_price, 0, ',', '.') }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="6" class="text-center">Belum ada transaksi</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Script ApexCharts -->
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
document.addEventListener("DOMContentLoaded", function () {
    var options = {
        chart: {
            type: 'bar',
            height: 300
        },
        series: [{
            name: 'Pengguna Baru',
            data: @json(array_values($usersByMonth->toArray()))
        }],
        xaxis: {
            categories: @json(array_map(function($m){ 
                return \Carbon\Carbon::create()->month($m)->translatedFormat('M'); 
            }, array_keys($usersByMonth->toArray())))
        },
        colors: ['#00C49F'],
        plotOptions: {
            bar: {
                columnWidth: '40%',
                borderRadius: 4
            }
        },
        legend: {
            position: 'bottom'
        }
    };

    var chart = new ApexCharts(document.querySelector("#userChart"), options);
    chart.render();
});
</script>
@endsection
