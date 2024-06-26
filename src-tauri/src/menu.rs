use tauri::{api::shell::open, CustomMenuItem, Manager, Menu, Runtime, Submenu, WindowMenuEvent};

const FF_NATIVE_LICENSE: &str = "https://github.com/cyf/faforever/blob/main/LICENSE";
const FF_PRIVACY_POLICY_URL: &str = "https://www.chenyifaer.com/faforever/en/legal/privacy/";

#[derive(Clone, serde::Serialize)]
struct Payload {
    message: String,
}

#[cfg(target_os = "windows")]
pub fn init(app_name: &str) -> Menu {
    use tauri::MenuItem;

    let file_menu = Menu::new()
        .add_native_item(MenuItem::CloseWindow)
        .add_native_item(MenuItem::Quit);

    let edit_menu = Menu::new()
        .add_native_item(MenuItem::Cut)
        .add_native_item(MenuItem::Copy)
        .add_native_item(MenuItem::Paste);

    let window_menu = Menu::new()
        .add_native_item(MenuItem::Minimize)
        .add_native_item(MenuItem::CloseWindow);

    let help_menu = Menu::new()
        .add_item(CustomMenuItem::new("update", "Check for Update..."))
        .add_item(CustomMenuItem::new("open-license", "View License"))
        .add_item(CustomMenuItem::new("open-privacy-policy", "Privacy Policy"));

    Menu::new()
        .add_submenu(Submenu::new("File", file_menu))
        .add_submenu(Submenu::new("Edit", edit_menu))
        .add_submenu(Submenu::new("Window", window_menu))
        .add_submenu(Submenu::new("Help", help_menu))
}

#[cfg(target_os = "linux")]
pub fn init(app_name: &str) -> Menu {
    use tauri::MenuItem;

    let file_menu = Menu::new()
        .add_native_item(MenuItem::CloseWindow)
        .add_native_item(MenuItem::Quit);

    let window_menu = Menu::new()
        .add_native_item(MenuItem::Minimize)
        .add_native_item(MenuItem::CloseWindow);

    let help_menu = Menu::new()
        .add_item(CustomMenuItem::new("update", "Check for Update..."))
        .add_item(CustomMenuItem::new("open-license", "View License"))
        .add_item(CustomMenuItem::new("open-privacy-policy", "Privacy Policy"));

    Menu::new()
        .add_submenu(Submenu::new("File", file_menu))
        .add_submenu(Submenu::new("Window", window_menu))
        .add_submenu(Submenu::new("Help", help_menu))
}

#[cfg(target_os = "macos")]
pub fn init(app_name: &str) -> Menu {
    use tauri::{AboutMetadata, MenuItem};

    let update = CustomMenuItem::new("update", "Check for Update...");

    let app_menu = Menu::new()
        .add_native_item(MenuItem::About(
            app_name.to_string(),
            AboutMetadata::default(),
        ))
        .add_native_item(MenuItem::Separator)
        .add_item(update)
        .add_native_item(MenuItem::Separator)
        .add_native_item(MenuItem::Services)
        .add_native_item(MenuItem::Separator)
        .add_native_item(MenuItem::Hide)
        .add_native_item(MenuItem::HideOthers)
        .add_native_item(MenuItem::ShowAll)
        .add_native_item(MenuItem::Separator)
        .add_native_item(MenuItem::Quit);

    let file_menu = Menu::new().add_native_item(MenuItem::CloseWindow);

    let edit_menu = Menu::new()
        .add_native_item(MenuItem::Undo)
        .add_native_item(MenuItem::Redo)
        .add_native_item(MenuItem::Separator)
        .add_native_item(MenuItem::Cut)
        .add_native_item(MenuItem::Copy)
        .add_native_item(MenuItem::Paste)
        .add_native_item(MenuItem::SelectAll);

    let view_menu = Menu::new().add_native_item(MenuItem::EnterFullScreen);

    let window_menu = Menu::new()
        .add_native_item(MenuItem::Minimize)
        .add_native_item(MenuItem::Zoom)
        .add_native_item(MenuItem::Separator)
        .add_native_item(MenuItem::CloseWindow);

    let help_menu = Menu::new()
        .add_item(CustomMenuItem::new("open-license", "View License"))
        .add_item(CustomMenuItem::new("open-privacy-policy", "Privacy Policy"));

    Menu::new()
        .add_submenu(Submenu::new(app_name, app_menu))
        .add_submenu(Submenu::new("File", file_menu))
        .add_submenu(Submenu::new("Edit", edit_menu))
        .add_submenu(Submenu::new("View", view_menu))
        .add_submenu(Submenu::new("Window", window_menu))
        .add_submenu(Submenu::new("Help", help_menu))
}

pub fn handle_menu_event<R: Runtime>(event: WindowMenuEvent<R>) {
    match event.menu_item_id() {
        "update" => {
            event.window().trigger("tauri://update", None);
        }
        "open-license" => {
            open(&event.window().shell_scope(), FF_NATIVE_LICENSE, None).unwrap();
        }
        "open-privacy-policy" => {
            open(&event.window().shell_scope(), FF_PRIVACY_POLICY_URL, None).unwrap();
        }
        _ => {}
    }
}
