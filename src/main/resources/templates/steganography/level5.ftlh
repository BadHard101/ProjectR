<#include "../header.ftlh">

<style>
    /* Стили для всплывающего окна */
    .popup {
        display: none;
        position: fixed;
        top: 50vh; /* 50% of the viewport height */
        left: 50vw; /* 50% of the viewport width */
        transform: translate(-50%, -50%);
        background-color: rgba(255, 255, 255, 0.5); /* Прозрачный белый фон */
        border-radius: 10px; /* Закругленные углы */
        padding: 2%; /* 2% of the .popup element's width */
        z-index: 1000;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Тень */
        backdrop-filter: blur(6px); /* Эффект размытия фона */
        word-break: normal;
        max-width: 100vw;
        max-height: 100vh;
        overflow: auto;
    }

    .popup > p {
        word-break: break-word;
    }

    .overlay {
        position: relative;
        display: inline-block;
        border-radius: 1vw; /* 1% of the viewport width */
        padding: 0 3%;
        margin-top: 2%;
        margin-bottom: 2%;
        word-break: break-word;
    }

    .overlay::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(176, 200, 253, 0.5); /* Белый цвет с прозрачностью 50% */
        z-index: -1;
        border-radius: 1.5vw; /* 1.5% of the viewport width */
        filter: blur(1vw); /* 1% of the viewport width */
    }
</style>
<div class="overlay">
<div class="mt-4">
    <h3>ЭТАП 5. ЗНАКОМСТВО СО КОДОМ</h3>
    <p>
        Ниже представлен пример кода на Python, который использует библиотеку opencv для работы
        с видео и numpy для манипуляций с массивами. Этот код внедряет скрытую информацию в видеофайл выбранным методом.
    </p>
    <p>
        Пояснения:
    </p>
    <p>
        Функция text_to_bits: Преобразует текст в список битов.
    </p>
    <p>
        Функция bits_to_text: Преобразует список битов обратно в текст (не используется в этом примере, но полезна для извлечения информации).
    </p>
    <p>
        Функция embed_text_in_frame: Встраивает биты текста в кадр изображения.
    </p>
    <p>
        Функция embed_text_in_video: Читает видео, встраивает скрытое сообщение в кадры и записывает новое видео.
    </p>
    <p>
        Этот код является базовым примером и может быть далее улучшен для обработки больших объемов данных, обеспечения большей безопасности и других особенностей.
    </p>
    <pre><code>
import cv2
import numpy as np

def text_to_bits(text):
    """Convert text to a list of bits."""
    bits = []
    for char in text:
        binval = bin(ord(char))[2:].rjust(8, '0')
        bits.extend([int(bit) for bit in binval])
    return bits

def bits_to_text(bits):
    """Convert a list of bits to text."""
    chars = []
    for b in range(len(bits) // 8):
        byte = bits[b*8:(b+1)*8]
        chars.append(chr(int(''.join([str(bit) for bit in byte]), 2)))
    return ''.join(chars)

def embed_text_in_frame(frame, text_bits, bit_index):
    """Embed text bits into the frame using LSB method."""
    rows, cols, channels = frame.shape
    total_pixels = rows * cols
    bits_to_embed = len(text_bits)

    if bit_index + bits_to_embed > total_pixels * 3:
        raise ValueError("Text is too long to fit in the frame")

    bit_idx = 0
    for row in range(rows):
        for col in range(cols):
            for channel in range(channels):
                if bit_idx < bits_to_embed:
                    frame[row, col, channel] = (frame[row, col, channel] & ~1) | text_bits[bit_idx]
                    bit_idx += 1
    return frame

def embed_text_in_video(input_video_path, output_video_path, text):
    cap = cv2.VideoCapture(input_video_path)
    fourcc = cv2.VideoWriter_fourcc(*'XVID')
    out = cv2.VideoWriter(output_video_path, fourcc, cap.get(cv2.CAP_PROP_FPS),
                          (int(cap.get(cv2.CAP_PROP_FRAME_WIDTH)), int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))))

    text_bits = text_to_bits(text)
    total_bits = len(text_bits)
    bit_index = 0

    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            break

        if bit_index < total_bits:
            frame = embed_text_in_frame(frame, text_bits[bit_index:bit_index + total_bits], bit_index)
            bit_index += total_bits

        out.write(frame)

    cap.release()
    out.release()
    cv2.destroyAllWindows()

# Пример использования:
input_video_path = 'input_video.avi'
output_video_path = 'output_video_with_hidden_message.avi'
hidden_message = 'This is a secret message.'

embed_text_in_video(input_video_path, output_video_path, hidden_message)

        </code></pre>
    <#if openPracLable??>
        <h2 style="color: #4B0082">${openPracLable}</h2>
    </#if>
    <form action="/openSteganoLevels" method="get" class="mt-4 mb-4">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit" class="btn btn-primary" style="background-color: #4B0082; border: #4B0082;">Я прочитал!</button>
    </form>
    <#--    <button id="openMenuButton" class="btn btn-primary">Подсказка</button>-->

    </div>
</div>

<#include "../footer.ftlh">
