

fn main() {
    // add
    let a =20;
    let b =3;

    // sub
    let c =69;
    let d =41;

    // mult
    let e =4;
    let f =12;

    // div
    let g =53;
    let h =2;

    let res = add(a, b);
    let res2 =sub(c, d);
    let res3 =mult(e, f);
    let res4 =div(g as f64, h as f64);

    println!("Add = {res}");
    println!("Sub = {res2}");
    println!("Mult = {res3}");
    println!("Div = {res4}");
}

fn add(x: i32, y: i32) -> i32 {
    x +y
}
fn sub(z: i32, aa: i32) -> i32 {
    z -aa
}
fn mult(ab: i32, ac: i32) -> i32 {
    ab *ac
}
fn div(ad: f64, ae: f64) -> f64 {
    ad / ae
}
