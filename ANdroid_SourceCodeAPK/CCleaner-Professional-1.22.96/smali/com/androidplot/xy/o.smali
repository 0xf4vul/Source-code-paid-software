.class public final Lcom/androidplot/xy/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/xy/o$1;
    }
.end annotation


# direct methods
.method private static a(IFDLjava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/n;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 53
    const-wide/16 v2, 0x0

    .line 56
    sget-object v1, Lcom/androidplot/xy/o$1;->b:[I

    add-int/lit8 v4, p0, -0x1

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    move v1, v0

    move-wide p2, v2

    .line 73
    :goto_0
    new-instance v2, Lcom/androidplot/xy/n;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/androidplot/xy/n;-><init>(FFD)V

    return-object v2

    .line 59
    :pswitch_0
    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/androidplot/c/g;->a(DDF)D

    move-result-wide v0

    div-double v0, p2, v0

    double-to-float v1, v0

    .line 60
    div-float v0, p1, v1

    .line 61
    goto :goto_0

    .line 63
    :pswitch_1
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    .line 64
    div-float v0, p1, v1

    .line 65
    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Lcom/androidplot/c/g;->a(DDF)D

    move-result-wide v2

    float-to-double v4, v1

    mul-double p2, v2, v4

    .line 66
    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    div-float v1, p1, v1

    .line 70
    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p1}, Lcom/androidplot/c/g;->a(DDF)D

    move-result-wide v2

    float-to-double v4, v1

    mul-double p2, v2, v4

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/androidplot/xy/XYPlot;ILandroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/n;
    .locals 6

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    sget-object v1, Lcom/androidplot/xy/o$1;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepMode$5df76715()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getDomainStepValue()D

    move-result-wide v2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/androidplot/xy/o;->a(IFDLjava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/n;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepMode$5df76715()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/androidplot/xy/XYPlot;->getRangeStepValue()D

    move-result-wide v2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/androidplot/xy/o;->a(IFDLjava/lang/Number;Ljava/lang/Number;)Lcom/androidplot/xy/n;

    move-result-object v0

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
