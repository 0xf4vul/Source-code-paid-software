.class public final Lcom/androidplot/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDF)D
    .locals 4

    .prologue
    .line 50
    .line 2045
    sub-double v0, p2, p0

    .line 51
    float-to-double v2, p4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(FDDFZ)D
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 65
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pixel values cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    cmpg-float v0, p5, v1

    if-gtz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Length in pixels must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-eqz p6, :cond_2

    .line 74
    sub-float p0, p5, p0

    .line 3045
    :cond_2
    sub-double v0, p3, p1

    .line 77
    float-to-double v2, p5

    div-double/2addr v0, v2

    float-to-double v2, p0

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public static a(DDDFZ)F
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Length in pixels must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    sub-double v0, p4, p2

    .line 34
    float-to-double v2, p6

    div-double v0, v2, v0

    .line 35
    sub-double v2, p0, p2

    .line 36
    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 38
    if-eqz p7, :cond_1

    .line 39
    sub-float v0, p6, v0

    .line 41
    :cond_1
    return v0
.end method
