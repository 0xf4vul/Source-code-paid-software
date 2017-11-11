.class final Lf/d/e/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/e/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/d/e/e;


# direct methods
.method constructor <init>(Lf/d/e/e;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget-object v1, v1, Lf/d/e/e;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    .line 118
    iget-object v2, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget v2, v2, Lf/d/e/e;->b:I

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget v2, v2, Lf/d/e/e;->c:I

    sub-int v1, v2, v1

    .line 120
    :goto_0
    if-ge v0, v1, :cond_1

    .line 121
    iget-object v2, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget-object v2, v2, Lf/d/e/e;->a:Ljava/util/Queue;

    iget-object v3, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    invoke-virtual {v3}, Lf/d/e/e;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v2, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget v2, v2, Lf/d/e/e;->c:I

    if-le v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget v2, v2, Lf/d/e/e;->c:I

    sub-int/2addr v1, v2

    .line 125
    :goto_1
    if-ge v0, v1, :cond_1

    .line 127
    iget-object v2, p0, Lf/d/e/e$1;->a:Lf/d/e/e;

    iget-object v2, v2, Lf/d/e/e;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_1
    return-void
.end method
