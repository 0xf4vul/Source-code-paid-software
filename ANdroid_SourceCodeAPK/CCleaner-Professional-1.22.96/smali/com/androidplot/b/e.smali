.class public final Lcom/androidplot/b/e;
.super Lcom/androidplot/c/j;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/c/j",
        "<",
        "Lcom/androidplot/b/a/b;",
        ">;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Paint;

.field public c:Z

.field public d:Landroid/graphics/Paint;

.field public e:Z

.field public f:Landroid/graphics/Paint;

.field public g:Z

.field public h:Landroid/graphics/Paint;

.field public i:Z

.field public j:Landroid/graphics/Paint;

.field public k:Lcom/androidplot/c/b;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const v2, -0xff0100

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/androidplot/c/j;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/androidplot/b/e;->a:Z

    .line 31
    iput-boolean v0, p0, Lcom/androidplot/b/e;->c:Z

    .line 33
    iput-boolean v0, p0, Lcom/androidplot/b/e;->e:Z

    .line 35
    iput-boolean v0, p0, Lcom/androidplot/b/e;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/androidplot/b/e;->i:Z

    .line 39
    new-instance v0, Lcom/androidplot/c/b;

    invoke-direct {v0}, Lcom/androidplot/c/b;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/e;->k:Lcom/androidplot/c/b;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/e;->b:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/androidplot/b/e;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/androidplot/b/e;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/e;->d:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/androidplot/b/e;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/androidplot/b/e;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/e;->h:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/androidplot/b/e;->h:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/androidplot/b/e;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/androidplot/b/e;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/b/e;->j:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/androidplot/b/e;->j:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/androidplot/b/e;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/androidplot/b/e;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 151
    const/16 v0, 0x1f

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 152
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 153
    invoke-virtual {p0, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized b_()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/c/j;->l:Lcom/androidplot/c/d;

    .line 1110
    iget-object v0, v0, Lcom/androidplot/c/d;->a:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/b/a/b;

    .line 67
    invoke-virtual {v0}, Lcom/androidplot/b/a/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method
