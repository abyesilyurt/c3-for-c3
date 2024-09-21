module foo;
import libc;

// C function from ESP C SDK for demo purposes
extern fn void esp_flash_get_size(void* arg, uint* size) @extern("esp_flash_get_size");

fn void app_main() @export @extern("app_main")
{

    libc::printf("Hello, World!\n");

    uint size;
    esp_flash_get_size(null, &size);
    libc::printf("Flash size: %d MB\n", size/1024/1024);
}