def bouncingBall(h, bounce, window)
  return -1 unless h > 0 && bounce > 0 && bounce < 1 && window < h
  heights = []
  until h <= window
    heights << h
    h *= bounce
  end
  (heights.size * 2) - 1
end

p bouncingBall(3, 0.66, 1.5)
p bouncingBall(30, 0.66, 1.5)
p bouncingBall(2, 0.5, 1.0)
