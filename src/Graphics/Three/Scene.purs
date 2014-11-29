module Graphics.Three.Scene where

import Control.Monad.Eff
import Data.Function
import Graphics.Three.Object3D
import Graphics.Three.Types
import Graphics.Three.Util

foreign import data Scene :: *

create :: ThreeEff Scene
create = ffi [""] "new THREE.Scene()"

add :: forall a. (Object3D a) => Scene -> a -> ThreeEff Unit
add = fpi ["scene", "a", ""] "scene.add(a)"
