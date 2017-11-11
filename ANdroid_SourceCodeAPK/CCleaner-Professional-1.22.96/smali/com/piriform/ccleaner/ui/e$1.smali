.class final Lcom/piriform/ccleaner/ui/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/e;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/e;->a(Lcom/piriform/ccleaner/ui/e;)F

    move-result v1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/e;->b(Lcom/piriform/ccleaner/ui/e;)F

    move-result v2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/e;->a(Lcom/piriform/ccleaner/ui/e;F)F

    .line 40
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/e;->a(Lcom/piriform/ccleaner/ui/e;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/e;->a(Lcom/piriform/ccleaner/ui/e;F)F

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/e;->invalidateSelf()V

    .line 45
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/e$1;->a:Lcom/piriform/ccleaner/ui/e;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/e;->c(Lcom/piriform/ccleaner/ui/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/piriform/ccleaner/ui/e;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 48
    :cond_1
    return-void
.end method
