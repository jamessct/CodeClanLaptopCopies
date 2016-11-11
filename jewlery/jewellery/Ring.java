package jewellery;

public class Ring {

  MetalType metal;
  GemType gem;

  public Ring(MetalType metal) {
    this.metal = metal;
  }

  public Ring(MetalType metal, GemType gem) {
    this.gem = gem;
    this.metal = metal;
  }

  public MetalType getMetal(){
    return this.metal;
  }

  public GemType getGem() {
    return this.gem;
  }
}