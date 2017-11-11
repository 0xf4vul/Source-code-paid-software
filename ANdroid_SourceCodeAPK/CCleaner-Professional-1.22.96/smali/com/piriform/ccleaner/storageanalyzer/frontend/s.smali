.class final Lcom/piriform/ccleaner/storageanalyzer/frontend/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/piriform/ccleaner/storageanalyzer/f;)I
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/piriform/ccleaner/storageanalyzer/frontend/s$1;->a:[I

    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    invoke-static {p0}, Lcom/piriform/ccleaner/storageanalyzer/frontend/s;->b(Lcom/piriform/ccleaner/storageanalyzer/f;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 19
    :pswitch_0
    const v0, 0x7f08026e

    .line 33
    :goto_0
    return v0

    .line 21
    :pswitch_1
    const v0, 0x7f080270

    goto :goto_0

    .line 23
    :pswitch_2
    const v0, 0x7f080272

    goto :goto_0

    .line 25
    :pswitch_3
    const v0, 0x7f080274

    goto :goto_0

    .line 27
    :pswitch_4
    const v0, 0x7f080271

    goto :goto_0

    .line 29
    :pswitch_5
    const v0, 0x7f08026f

    goto :goto_0

    .line 31
    :pswitch_6
    const v0, 0x7f08026d

    goto :goto_0

    .line 33
    :pswitch_7
    const v0, 0x7f080273

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static b(Lcom/piriform/ccleaner/storageanalyzer/f;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
