.class public final Lcom/androidplot/b/t;
.super Lcom/androidplot/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/b/t$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/b/g",
        "<",
        "Lcom/androidplot/b/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/b/s;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/androidplot/b/g;-><init>(FLjava/lang/Enum;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    .prologue
    .line 83
    sget-object v1, Lcom/androidplot/b/t$1;->a:[I

    invoke-virtual {p0}, Lcom/androidplot/b/t;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/s;

    invoke-virtual {v0}, Lcom/androidplot/b/s;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported LayoutType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androidplot/b/t;->b()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    sget-object v0, Lcom/androidplot/b/g$b;->a:Lcom/androidplot/b/g$b;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/b/t;->a(FLcom/androidplot/b/g$b;)F

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 87
    :pswitch_1
    sget-object v0, Lcom/androidplot/b/g$b;->c:Lcom/androidplot/b/g$b;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/b/t;->a(FLcom/androidplot/b/g$b;)F

    move-result v0

    goto :goto_0

    .line 89
    :pswitch_2
    sget-object v0, Lcom/androidplot/b/g$b;->b:Lcom/androidplot/b/g$b;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/b/t;->a(FLcom/androidplot/b/g$b;)F

    move-result v0

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v0, Lcom/androidplot/b/g$b;->a:Lcom/androidplot/b/g$b;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/b/t;->b(FLcom/androidplot/b/g$b;)F

    move-result v0

    goto :goto_0

    .line 93
    :pswitch_4
    sget-object v0, Lcom/androidplot/b/g$b;->c:Lcom/androidplot/b/g$b;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/b/t;->b(FLcom/androidplot/b/g$b;)F

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_5
    sget-object v0, Lcom/androidplot/b/g$b;->b:Lcom/androidplot/b/g$b;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/b/t;->b(FLcom/androidplot/b/g$b;)F

    move-result v0

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final synthetic a(FLjava/lang/Enum;)V
    .locals 2

    .prologue
    .line 22
    check-cast p2, Lcom/androidplot/b/s;

    .line 1068
    sget-object v0, Lcom/androidplot/b/t$1;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/b/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1073
    :goto_0
    return-void

    .line 1072
    :pswitch_0
    sget-object v0, Lcom/androidplot/b/g$a;->a:Lcom/androidplot/b/g$a;

    invoke-static {p1, v0}, Lcom/androidplot/b/t;->a(FLcom/androidplot/b/g$a;)V

    goto :goto_0

    .line 1077
    :pswitch_1
    sget-object v0, Lcom/androidplot/b/g$a;->b:Lcom/androidplot/b/g$a;

    invoke-static {p1, v0}, Lcom/androidplot/b/t;->a(FLcom/androidplot/b/g$a;)V

    goto :goto_0

    .line 1068
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
