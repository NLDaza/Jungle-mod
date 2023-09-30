-- https://www.reddit.com/r/tabletopsimulator/comments/m9dtpp/scripting_pawels_super_basic_scripting_guide/
function onload()
    self.createButton({
        click_function="deal", function_owner=self,
        position={0,0,0}, height=500, width=500, font_size=300, color={0,0,0,0}
    })
end

-- To deal a card
function deal()

end