import { Component, OnInit } from "@angular/core";
import { ShopforhomeService } from "../shopforhome.service";
import { Subscription } from "rxjs";
import { ActivatedRoute } from "@angular/router";


@Component({
  selector: "app-discount",
  templateUrl: "./discount.component.html",
  styleUrls: ["./discount.component.css"],
})
export class DiscountComponent implements OnInit {
  price: string ;
  search: string ;
  searchText: string ;
  page: any;
  querySub: Subscription;
  coupon: any;

  constructor(
    private route: ActivatedRoute,
    private shopforhomeservice: ShopforhomeService
  ) {}

  ngOnInit() {
    
    this.querySub = this.route.queryParams.subscribe(() => {
      this.getCouponList();
    });
  }

  getCouponList() {
    let nextPage = 1;
    let size = 10;
    if (this.route.snapshot.queryParamMap.get("page")) {
      nextPage = +Number(this.route.snapshot.paramMap.get('page'));
      size = +Number(this.route.snapshot.paramMap.get('size'));
    }
    this.shopforhomeservice
      .getCouponPage(nextPage, size)
      .subscribe((page) => (this.page = page));
  }

  addCoupon(code: string) {
    this.shopforhomeservice.addCoupon(code).subscribe(() => this.getCouponList());
  }

  deleteCoupon(code: string) {
    this.shopforhomeservice.deleteCoupon(code).subscribe(() => this.getCouponList());
  }
}

