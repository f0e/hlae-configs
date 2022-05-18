# about

These are my personal configs for recording CS:GO clips using HLAE. I've created multiple different configs for different purposes, and separated the logic for easy editing.

## configs

**regular**: records high framerate video

**blur**: records video with motion blur

| type    | config           | recorded streams            |
| ------- | ---------------- | --------------------------- |
| regular | hlae.cfg         | game                        |
| blur    | hlae_blur.cfg    | game                        |
| regular | hlae_vm.cfg      | game, viewmodel             |
| blur    | hlae_vm_blur.cfg | game, viewmodel             |
| regular | hlae_adv.cfg     | game, depth, viewmodel, hud |

You can create your own configs by copying one of these defaults and modifying the streams.

# configuration

Recording settings are adjustable inside `hlae__settings.cfg`. See [settings](#settings) for explanations on what each setting does.

# requirements

- [HLAE ☠️ (with ffmpeg)](https://www.advancedfx.org/download/)

### optional

- [utvideo codec](https://github.com/umezawatakeshi/utvideo) (best format imo: smaller lossless recordings, fast editing)

# settings

## available recording presets

Options (bad->good quality):

- ffmpeg_terrible
- ffmpeg_low
- ffmpeg_medium
- ffmpeg_high
- ffmpeg_ultra_high
- ffmpeg_almost_lossless
- ffmpeg_lossless (might break in editing programs)

extra options:

- ffmpeg_prores
- ffmpeg_utvideo (requires codec installation https://github.com/umezawatakeshi/utvideo)

I suggest using utvideo for the best quality recordings and fastest editing experience.

## general settings

### recording fps

Higher = smoother blur (less visible frames), longer recording time. Good values are 900-1200

## non-blur settings

### recording quality

Select a preset from [the list](#available-recording-presets)

## blur settings

These settings only apply to \_blur configs.

### blur fps

The final fps of the recorded video.

### blur amount

The amount of motion blur. Higher = more blur, lower = less blur. (1 = default sony vegas resample)

If you want to use velocity in editing then you can make this higher than your final video fps and adjust the blur amount using the formula below.

```
[new blur amount] = [old blur amount] × ([new fps] / [old fps])
```

e.g. You want a video at 60fps with 1 blur amount, so you can instead record at 120fps with 2 blur amount

### blur quality

Select a preset from [the list](#available-recording-presets)
