import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from "rxjs";
import { Discount } from './discount';
import { disUrl } from "src/environments/environment";

@Injectable({ providedIn: 'root' })
export class ServiceNameService {

  constructor(private http: HttpClient) {}
}

@Injectable({
  providedIn: 'root',
})
export class ShopforhomeService {
  private discUrl = `${disUrl}/coupon/list`;
  constructor(private http: HttpClient) {}



  getCouponPage(page = 1, size = 10): Observable<any> {
    const url = `${disUrl}/coupon/list?page=${page}&size=${size}`;
    return this.http.get(url);
  }

  getCoupon(): Observable<any> {
    const url = `${disUrl}/coupon/alllist`;
    return this.http.get(url);
  }

  addCoupon(code: string): Observable<Discount> {
    const url = `${disUrl}/add/coupon/${code}`;
    return this.http.post<Discount>(url, null);
  }

  deleteCoupon(code: string): Observable<any> {
    const url = `${disUrl}/delete/coupon/${code}`;
    return this.http.delete(url);
  }




}
