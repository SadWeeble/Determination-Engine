function love.load()
     love.window.setMode(640, 480)
     love.window.setTitle("Determination Engine")
     love.graphics.setDefaultFilter("nearest", "nearest", 1)

     require("Assets/DTE/AssetLoader")

     FRAME = 0
     STATE = "State_SplashScreen"
     STATE_AGE = 0
end

function love.update(dt)
     -- What an exceptional way to limit the framerate!
     if math.floor(FRAME) % 2 == 0 then
          if STATE == "State_SplashScreen" then
          end
          STATE_AGE = STATE_AGE + 1
     end
     FRAME = FRAME + 1
end

function love.draw()
     if STATE == "State_SplashScreen" then
          local s = math.abs(math.sin(FRAME/20))
          love.graphics.draw(Image_SplashScreen_Soul, 320, 240, 0, 5+s, 5+s, Image_SplashScreen_Soul:getWidth()/2, Image_SplashScreen_Soul:getHeight()/2)
     end
end
