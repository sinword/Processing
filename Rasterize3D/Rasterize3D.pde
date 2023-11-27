PImage img;

void setup() {
    // Best size for Instagram
    size(900, 900, P3D);
    img = loadImage("Statue3.jpg");
    img.resize(900, 900);
}

void draw() {
    background(#f1f1f1); // light gray
    fill(0);
    noStroke();
    sphereDetail(3);
    float tiles = 100;
    float tileSize = width/tiles;
    
    push();
    translate(width / 2, height / 2);
    rotateY(radians(frameCount));
    
    for (int x = 0; x < tiles; x++) {
        for (int y = 0; y < tiles; y++) {
            color c = img.get(int(x * tileSize), int(y * tileSize));
            float b = map(brightness(c), 0, 255, 1, 0);
            
            float z = map(b, 0, 1, -100, 100);
            
            push();
            translate(x * tileSize - width / 2, y * tileSize - width / 2, z);
            sphere(tileSize * b * 0.7);
            pop();
        }
    }
    
    pop();
}
