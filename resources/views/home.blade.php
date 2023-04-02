<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Prompt&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Prompt', sans-serif;
        }

        #zipcode {
            background-color: #FF5757;
            color: white;
            text-align: center;
            border-radius: 10px;
            font-size: 1.5rem
        }

        #zipcode::placeholder {
            color: #FFC6C6;
            opacity: 1;
            /* Firefox */
        }

        #zipcode:-ms-input-placeholder {
            /* Internet Explorer 10-11 */
            color: #FFC6C6;
        }

        #zipcode::-ms-input-placeholder {
            /* Microsoft Edge */
            color: #FFC6C6;
        }
    </style>
</head>

<body>
    <div class="container">
        <div style="height: 100vh" class=" flex-column d-flex justify-content-center align-items-center gap-3">
            <label for="zipcode" class="h3">กรอกรหัสไปรษณีย์</label>
            <input id="zipcode" oninput="this.value = this.value.replace(/[^0-9]/g, '')" name="code"
                class="p-2 form-control" pattern="[0-9]*" maxlength="5" onkeydown="if (event.keyCode == 13) sendData()"
                placeholder="กรอกรหัสไปรษณีย์ของคุณ" type="text">
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
        integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous">
    </script>
    <script>
        function sendData() {
            const zipcode = $('#zipcode').val();
            $.ajax({
                type: 'GET',
                url: '/create',
                data: {
                    code: zipcode
                },
                success: function(response) {
                    Swal.fire({
                        title: 'คุณลองเปิดหน้าต่างสิ',
                        // text: 'Modal with a custom image.',
                        imageUrl: 'https://unsplash.it/400/200',
                        imageWidth: 400,
                        imageHeight: 200,
                        allowEnterKey: false,
                        // imageAlt: 'Custom image',
                    })
                    // handle response from server
                }
            });
        }
    </script>
</body>

</html>
