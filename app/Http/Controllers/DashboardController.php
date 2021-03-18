<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ledgerentrie;
use App\Models\Balance;
use App\Models\Company;
use Carbon\Carbon;

class DashboardController extends Controller
{
   	public function todayscount(){
   		$sell = Ledgerentrie::where('e_type', 1)->where('e_date', Carbon::now()->format('Y-m-d'))->count();
   		$purchase = Ledgerentrie::where('e_type', 2)->where('e_date', Carbon::now()->format('Y-m-d'))->count();
   		$payment = Ledgerentrie::where('e_type', 3)->where('e_date', Carbon::now()->format('Y-m-d'))->count();
   		$ac_entry = Balance::where('e_date', Carbon::now()->format('Y-m-d'))->count();

   		return ['sell' => $sell, 'purchase' => $purchase, 'payment' => $payment, 'ac_enty' => $ac_entry];
   	}

    public function company(){
      return Company::first();
    }

   	public function chartdata(){

      $dates = [Carbon::now()->subDays(6)->format('d M'),
                Carbon::now()->subDays(5)->format('d M'),
                Carbon::now()->subDays(4)->format('d M'),
                Carbon::now()->subDays(3)->format('d M'),
                Carbon::now()->subDays(2)->format('d M'),
                Carbon::now()->subDays(1)->format('d M'),
                Carbon::now()->format('d M')
              ];


    /////////////////////////////////////
    //Start Last 7 Dayes Sells Counts
    /////////////////////////////////////
      $sellscountsarry = array(0, 0, 0, 0, 0, 0, 0);

      $last7dsells = Ledgerentrie::where('e_type', 1)->whereBetween('e_date', [Carbon::now()->subDays(7), Carbon::now()])->orderBy('e_date')->get();

      foreach ($last7dsells as $sells) {

        switch ($sells->e_date) {
          case Carbon::now()->subDays(6)->format('Y-m-d'):
            $sellscountsarry[0]++;
            break;

          case Carbon::now()->subDays(5)->format('Y-m-d'):
            $sellscountsarry[1]++;
            break;

          case Carbon::now()->subDays(4)->format('Y-m-d'):
            $sellscountsarry[2]++;
            break;

          case Carbon::now()->subDays(3)->format('Y-m-d'):
            $sellscountsarry[3]++;
            break;

          case Carbon::now()->subDays(2)->format('Y-m-d'):
            $sellscountsarry[4]++;
            break;

          case Carbon::now()->subDays(1)->format('Y-m-d'):
            $sellscountsarry[5]++;
            break;

          case Carbon::now()->format('Y-m-d'):
            $sellscountsarry[6]++;
            break;

          default:
            # code...
            break;
        }
      }

    //////////////////////////////////////
    //Start Last 7 Dayes Purchase Counts
    /////////////////////////////////////
      $purchasecountsarry = array(0, 0, 0, 0, 0, 0, 0);

      $last7purchase = Ledgerentrie::where('e_type', 2)->whereBetween('e_date', [Carbon::now()->subDays(7), Carbon::now()])->orderBy('e_date')->get();

      foreach ($last7purchase as $purchases) {

        switch ($purchases->e_date) {
          case Carbon::now()->subDays(6)->format('Y-m-d'):
            $purchasecountsarry[0]++;
            break;

          case Carbon::now()->subDays(5)->format('Y-m-d'):
            $purchasecountsarry[1]++;
            break;

          case Carbon::now()->subDays(4)->format('Y-m-d'):
            $purchasecountsarry[2]++;
            break;

          case Carbon::now()->subDays(3)->format('Y-m-d'):
            $purchasecountsarry[3]++;
            break;

          case Carbon::now()->subDays(2)->format('Y-m-d'):
            $purchasecountsarry[4]++;
            break;

          case Carbon::now()->subDays(1)->format('Y-m-d'):
            $purchasecountsarry[5]++;
            break;

          case Carbon::now()->format('Y-m-d'):
            $purchasecountsarry[6]++;
            break;

          default:
            # code...
            break;
        }
      }

    //////////////////////////////////////
    //Start Last 7 Dayes Payment Counts
    //////////////////////////////////////
      $paymentcountarray = array(0, 0, 0, 0, 0, 0, 0);

      $last7payment = Ledgerentrie::where('e_type', 3)->whereBetween('e_date', [Carbon::now()->subDays(7), Carbon::now()])->orderBy('e_date')->get();

      foreach ($last7payment as $payment) {

        switch ($payment->e_date) {
          case Carbon::now()->subDays(6)->format('Y-m-d'):
            $paymentcountarray[0]++;
            break;

          case Carbon::now()->subDays(5)->format('Y-m-d'):
            $paymentcountarray[1]++;
            break;

          case Carbon::now()->subDays(4)->format('Y-m-d'):
            $paymentcountarray[2]++;
            break;

          case Carbon::now()->subDays(3)->format('Y-m-d'):
            $paymentcountarray[3]++;
            break;

          case Carbon::now()->subDays(2)->format('Y-m-d'):
            $paymentcountarray[4]++;
            break;

          case Carbon::now()->subDays(1)->format('Y-m-d'):
            $paymentcountarray[5]++;
            break;

          case Carbon::now()->format('Y-m-d'):
            $paymentcountarray[6]++;
            break;

          default:
            # code...
            break;
        }
      }


    //////////////////////////////////////
    //Start Last 7 Dayes AC Entry Counts
    //////////////////////////////////////
      
      $ac_entrycountsarray = array(0, 0, 0, 0, 0, 0, 0);

      $last7dayacentry = Balance::whereBetween('e_date', [Carbon::now()->subDays(7), Carbon::now()])->orderBy('e_date')->get();

      foreach ($last7dayacentry as $ac_entry) {

        switch ($ac_entry->e_date) {
          case Carbon::now()->subDays(6)->format('Y-m-d'):
            $ac_entrycountsarray[0]++;
            break;

          case Carbon::now()->subDays(5)->format('Y-m-d'):
            $ac_entrycountsarray[1]++;
            break;

          case Carbon::now()->subDays(4)->format('Y-m-d'):
            $ac_entrycountsarray[2]++;
            break;

          case Carbon::now()->subDays(3)->format('Y-m-d'):
            $ac_entrycountsarray[3]++;
            break;

          case Carbon::now()->subDays(2)->format('Y-m-d'):
            $ac_entrycountsarray[4]++;
            break;

          case Carbon::now()->subDays(1)->format('Y-m-d'):
            $ac_entrycountsarray[5]++;
            break;

          case Carbon::now()->format('Y-m-d'):
            $ac_entrycountsarray[6]++;
            break;

          default:
            # code...
            break;
        }
      }

      return ['dates' => $dates, 'sells' => $sellscountsarry, 'purchase' => $purchasecountsarry, 'payments' => $paymentcountarray, 'ac_entry' => $ac_entrycountsarray];
   	}
}
