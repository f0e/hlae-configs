# settings explained

## available recording presets
Options (bad->good quality):
- tekno_ffmpeg_terrible
- tekno_ffmpeg_low
- tekno_ffmpeg_medium
- tekno_ffmpeg_high
- tekno_ffmpeg_ultra_high
- tekno_ffmpeg_almost_lossless
- tekno_ffmpeg_lossless (might break in editing programs)

extra options:
- tekno_ffmpeg_prores
- tekno_ffmpeg_utvideo (requires codec installation https://github.com/umezawatakeshi/utvideo)

I suggest using utvideo for the best quality recordings and fastest editing experience.

---

## general settings

### recording fps
Higher = smoother blur (less visible frames), longer recording time. Good values are 900-1200

---

## non-blur settings

### recording quality
Select a preset from [the list](#available-recording-presets)

---

## blur settings
These settings only apply to _blur configs.

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