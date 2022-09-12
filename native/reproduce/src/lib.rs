#[rustler::nif]
fn determine_mode() -> String {
    if cfg!(debug_assertions) {
        "debug".into()
    } else {
        "release".into()
    }
}

rustler::init!("Elixir.Reproduce", [determine_mode]);
