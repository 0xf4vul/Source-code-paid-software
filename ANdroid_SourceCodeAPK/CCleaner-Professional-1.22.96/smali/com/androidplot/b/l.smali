.class public final Lcom/androidplot/b/l;
.super Lcom/androidplot/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/b/l$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/b/f",
        "<",
        "Lcom/androidplot/b/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(FLcom/androidplot/b/k;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/androidplot/b/f;-><init>(FLjava/lang/Enum;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()F
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/androidplot/b/f;->a()F

    move-result v0

    return v0
.end method

.method public final a(F)F
    .locals 3

    .prologue
    .line 47
    sget-object v1, Lcom/androidplot/b/l$1;->a:[I

    invoke-virtual {p0}, Lcom/androidplot/b/l;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/k;

    invoke-virtual {v0}, Lcom/androidplot/b/k;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported LayoutType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androidplot/b/l;->b()Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :pswitch_0
    invoke-super {p0}, Lcom/androidplot/b/f;->a()F

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 2025
    :pswitch_1
    invoke-super {p0}, Lcom/androidplot/b/f;->a()F

    move-result v0

    .line 51
    mul-float/2addr v0, p1

    goto :goto_0

    .line 3025
    :pswitch_2
    invoke-super {p0}, Lcom/androidplot/b/f;->a()F

    move-result v0

    .line 53
    sub-float v0, p1, v0

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final synthetic a(FLjava/lang/Enum;)V
    .locals 2

    .prologue
    .line 25
    check-cast p2, Lcom/androidplot/b/k;

    .line 3032
    sget-object v0, Lcom/androidplot/b/l$1;->a:[I

    invoke-virtual {p2}, Lcom/androidplot/b/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    :cond_0
    return-void

    .line 3034
    :pswitch_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 3035
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SizeMetric Relative and Hybrid layout values must be within the range of 0 to 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
