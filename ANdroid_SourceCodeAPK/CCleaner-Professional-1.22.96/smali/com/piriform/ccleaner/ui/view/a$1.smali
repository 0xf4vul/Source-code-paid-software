.class final Lcom/piriform/ccleaner/ui/view/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/piriform/ccleaner/ui/view/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/a;J)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/a$1;->b:Lcom/piriform/ccleaner/ui/view/a;

    iput-wide p2, p0, Lcom/piriform/ccleaner/ui/view/a$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    iget-wide v2, p0, Lcom/piriform/ccleaner/ui/view/a$1;->a:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 138
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/a$1;->b:Lcom/piriform/ccleaner/ui/view/a;

    .line 1016
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/view/a;->c:Lcom/piriform/ccleaner/ui/view/j;

    .line 138
    int-to-long v4, v0

    .line 2013
    iput-wide v4, v1, Lcom/piriform/ccleaner/ui/view/j;->b:J

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a$1;->b:Lcom/piriform/ccleaner/ui/view/a;

    .line 2016
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/a;->b:Lcom/piriform/ccleaner/ui/view/j;

    .line 3013
    iput-wide v2, v0, Lcom/piriform/ccleaner/ui/view/j;->b:J

    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/view/a$1;->b:Lcom/piriform/ccleaner/ui/view/a;

    .line 3016
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/view/a;->a:Lcom/piriform/ccleaner/ui/view/SectionedBarView;

    .line 141
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/view/SectionedBarView;->invalidate()V

    .line 142
    return-void
.end method
