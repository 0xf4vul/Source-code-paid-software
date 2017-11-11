.class public Lcom/androidplot/b/a/a;
.super Lcom/androidplot/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/b/a/a$1;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field private k:Landroid/graphics/Paint;

.field private l:Lcom/androidplot/b/p;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/androidplot/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/androidplot/b/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;Lcom/androidplot/b/p;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/androidplot/b/m;

    sget-object v1, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    sget-object v2, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    invoke-direct {p0, p1, v0}, Lcom/androidplot/b/a/b;-><init>(Lcom/androidplot/b/e;Lcom/androidplot/b/m;)V

    .line 32
    iput-boolean v4, p0, Lcom/androidplot/b/a/a;->m:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1121
    iput-object p2, p0, Lcom/androidplot/b/a/b;->f:Lcom/androidplot/b/m;

    .line 56
    iput-object p3, p0, Lcom/androidplot/b/a/a;->l:Lcom/androidplot/b/p;

    .line 57
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/androidplot/b/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/androidplot/b/a/a;->c()V

    .line 64
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 111
    sget-object v1, Lcom/androidplot/b/a;->i:Lcom/androidplot/b/a;

    invoke-static {p2, v1}, Lcom/androidplot/b/a/a;->a(Landroid/graphics/RectF;Lcom/androidplot/b/a;)Landroid/graphics/PointF;

    move-result-object v1

    .line 118
    const/16 v2, 0x1f

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 119
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    sget-object v1, Lcom/androidplot/b/a/a$1;->a:[I

    iget-object v2, p0, Lcom/androidplot/b/a/a;->l:Lcom/androidplot/b/p;

    invoke-virtual {v2}, Lcom/androidplot/b/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Orientation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/androidplot/b/a/a;->l:Lcom/androidplot/b/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not yet implemented for TextLabelWidget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 124
    :pswitch_0
    const/high16 v1, -0x3d4c0000    # -90.0f

    :try_start_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 133
    :goto_1
    :pswitch_1
    iget-object v1, p0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 127
    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    :try_start_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    .line 181
    iget-boolean v0, p0, Lcom/androidplot/b/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/androidplot/b/a/a;->c()V

    .line 184
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/androidplot/b/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/androidplot/b/a/a;->c()V

    .line 71
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/androidplot/b/a/a;->a:Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lcom/androidplot/b/a/a;->k:Landroid/graphics/Paint;

    .line 80
    invoke-static {v0, v1}, Lcom/androidplot/c/c;->a(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v1, Lcom/androidplot/b/a/a$1;->a:[I

    iget-object v2, p0, Lcom/androidplot/b/a/a;->l:Lcom/androidplot/b/p;

    invoke-virtual {v2}, Lcom/androidplot/b/p;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/androidplot/b/a/a;->d()V

    goto :goto_0

    .line 87
    :pswitch_0
    new-instance v1, Lcom/androidplot/b/m;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v4, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    .line 2121
    iput-object v1, p0, Lcom/androidplot/b/a/b;->f:Lcom/androidplot/b/m;

    goto :goto_1

    .line 91
    :pswitch_1
    new-instance v1, Lcom/androidplot/b/m;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget-object v4, Lcom/androidplot/b/k;->a:Lcom/androidplot/b/k;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/androidplot/b/m;-><init>(FLcom/androidplot/b/k;FLcom/androidplot/b/k;)V

    .line 3121
    iput-object v1, p0, Lcom/androidplot/b/a/b;->f:Lcom/androidplot/b/m;

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
