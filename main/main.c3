module foo;
import libc;

extern fn void esp_flash_get_size(void* arg, uint* size) @extern("esp_flash_get_size");

fn void app_main() @export @extern("app_main")
{
    libc::printf("Hello, World!\n");
}