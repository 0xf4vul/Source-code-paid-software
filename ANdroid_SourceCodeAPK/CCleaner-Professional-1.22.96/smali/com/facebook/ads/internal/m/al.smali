.class public final Lcom/facebook/ads/internal/m/al;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/facebook/ads/internal/b/l;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/m/al$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "AdMob"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Flurry"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "InMobi"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Audience Network"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
