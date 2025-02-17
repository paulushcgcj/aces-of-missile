using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace AceOfMissile
{
  public class Player
  {

    private Texture2D _texture;
    private Vector2 _position;
    private Vector2 _size;    
    private float _speed;

    public Player(GraphicsDevice graphicsDevice, Vector2 initialPosition, float speed)
    {
      // Create a 1x1 white texture (a square)
      _texture = new Texture2D(graphicsDevice, 1, 1);
      _texture.SetData(new[] { Color.White });

      _position = initialPosition;

      _size = new Vector2(50, 50);

      _speed = speed;
    }

    public void Update(GameTime gameTime)
    {
      HandleInput();
    }

    public void Draw(SpriteBatch spriteBatch)
    {
      spriteBatch.Draw(
        _texture, 
        new Rectangle(
          (int)_position.X, 
          (int)_position.Y, 
          (int)_size.X, 
          (int)_size.Y
        ),
        Color.White
        );
    }

    

    private void HandleInput()
    {
        KeyboardState state = Keyboard.GetState();

            if (state.IsKeyDown(Keys.Left))
                _position.X -= _speed;

            if (state.IsKeyDown(Keys.Right))
                _position.X += _speed;

            // Keep player within the screen bounds
            _position.X = MathHelper.Clamp(_position.X, 0, 800 - _size.X);
    }
  }
  
}