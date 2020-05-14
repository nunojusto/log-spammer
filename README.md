# log-spammer
This is a container to stress test logs.

Source code for image  https://hub.docker.com/repository/docker/cryptotuga/log-spammer

## This image will create a container that produces ramdom log messages

### Example logging
```
{"log":"2020-05-14T13:58:09+0000 DEBUG TmnlPrjzfLUxSyb45kwKq0XkWveNUupJ8jNlsHlxBR.\n","stream":"stdout","time":"2020-05-14T13:58:09.742378088Z"}
{"log":"2020-05-14T13:58:09+0000 INFO Message Iefha1ijDUk1BFfahs8UL1mCjchOWXrIFpg1YIht9D.\n","stream":"stdout","time":"2020-05-14T13:58:09.922095873Z"}
{"log":"2020-05-14T13:58:10+0000 ERROR Message GOqFKtg5UpvmPaeOKc6CzfZpXIaV62AmlMCoO1IFyH.\n","stream":"stdout","time":"2020-05-14T13:58:10.235131483Z"}
{"log":"2020-05-14T13:58:10+0000 ERROR Message 4Z44YD4RMwFXH3iPKHhTNPtJ7idH5ykns65ytDWccC.\n","stream":"stdout","time":"2020-05-14T13:58:10.61028789Z"}
{"log":"2020-05-14T13:58:10+0000 DEBUG b3Z9EDUF0wHLcdAxF4cEZFkunZLiP1yJYVogDT1tFN.\n","stream":"stdout","time":"2020-05-14T13:58:10.859294427Z"}
{"log":"2020-05-14T13:58:11+0000 WARN dEl2UFHZNKDD9Ft4fXTrdTAdd2h9icAqhYMSDvLbHA.\n","stream":"stdout","time":"2020-05-14T13:58:11.014897794Z"}
{"log":"2020-05-14T13:58:11+0000 WARN 0jvVU8uM8SvocWG5COrPGYPVE1Tb1A0YPpCHlrMfmE.\n","stream":"stdout","time":"2020-05-14T13:58:11.193194734Z"}
{"log":"2020-05-14T13:58:11+0000 DEBUG ClWXXoSluDXs2NVGXbZHbFRfrdCjlGHnJIJvVNx7TL.\n","stream":"stdout","time":"2020-05-14T13:58:11.558100284Z"}
{"log":"2020-05-14T13:58:11+0000 INFO Message X6fCFiM03g7IiqMrrGKjOHxRQD3gmK8ILqayIgjqRx.\n","stream":"stdout","time":"2020-05-14T13:58:11.674612947Z"}
{"log":"2020-05-14T13:58:12+0000 INFO Message RgLqySNgPkG5trBBPqfahNWUow5KaUbeb8Ev8UinOW.\n","stream":"stdout","time":"2020-05-14T13:58:12.079797852Z"}
{"log":"2020-05-14T13:58:12+0000 DEBUG eRl7wovEWhtcfpp1qRVJPqo8cp80lpmcRAM8MpqkLq.\n","stream":"stdout","time":"2020-05-14T13:58:12.271917508Z"}
{"log":"2020-05-14T13:58:12+0000 INFO Message Lk6Urlxa101KoJGAfDMtEVX5G03jJxzsSBOxPa13Re.\n","stream":"stdout","time":"2020-05-14T13:58:12.594216303Z"}
{"log":"2020-05-14T13:58:12+0000 ERROR Message HSnFoq9J0TNleS2RwFlREA59cRLLijmkEfBAdTuaJS.\n","stream":"stdout","time":"2020-05-14T13:58:12.799296409Z"}
{"log":"2020-05-14T13:58:13+0000 WARN zCwoPhUTkPVGD8gm74UtmAAHxnUeloXHFOiwq3RlPD.\n","stream":"stdout","time":"2020-05-14T13:58:13.212050418Z"}
```

## how to build this image

If you don't want to download from my docker hub https://hub.docker.com/repository/docker/cryptotuga/log-spammer , you can use these command:

- Clone this repo

`git clone https://github.com/nunojusto/log-spammer`

- Move to the folder 

`cd log-spammer`

- Build and tag the image

`docker build --tag cryptotuga/log-spammer:0.1 .`

## How to use

- Use different time intervals to spam logs every random (200, 500) milliseconds

`docker run cryptotuga/log-spammer:latest 200 500`

