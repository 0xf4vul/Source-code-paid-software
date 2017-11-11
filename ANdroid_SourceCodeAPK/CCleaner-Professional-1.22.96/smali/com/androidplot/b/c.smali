.class public final Lcom/androidplot/b/c;
.super Lcom/androidplot/b/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/b/c$1;,
        Lcom/androidplot/b/c$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/androidplot/b/o;->a:I

    invoke-direct {p0, v0}, Lcom/androidplot/b/c;-><init>(I)V

    .line 61
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/androidplot/b/n;-><init>(I)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidplot/b/c;->b:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/androidplot/b/c;->a:I

    .line 72
    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/RectF;II)F
    .locals 4

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    const/4 v0, 0x0

    .line 127
    sget-object v2, Lcom/androidplot/b/c$1;->a:[I

    add-int/lit8 v3, p2, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 141
    :goto_0
    if-eqz v1, :cond_0

    .line 142
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 144
    :goto_1
    return v0

    .line 130
    :pswitch_0
    iget v1, p0, Lcom/androidplot/b/c;->a:I

    .line 131
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_0

    .line 135
    :pswitch_1
    iget v1, p0, Lcom/androidplot/b/c;->b:I

    .line 136
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_0

    .line 144
    :cond_0
    int-to-float v1, p3

    div-float/2addr v0, v1

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic a(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    .line 1092
    new-instance v0, Lcom/androidplot/b/c$a;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/androidplot/b/c$a;-><init>(Lcom/androidplot/b/c;Lcom/androidplot/b/c;Landroid/graphics/RectF;I)V

    .line 36
    return-object v0
.end method
