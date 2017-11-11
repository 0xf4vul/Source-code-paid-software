.class final Lb/a/a/b$c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/b$c;->a(Lb/a/a/b$b;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/b$b;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Lb/a/a/b$c;


# direct methods
.method constructor <init>(Lb/a/a/b$c;Lb/a/a/b$b;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1430
    iput-object p1, p0, Lb/a/a/b$c$3;->d:Lb/a/a/b$c;

    iput-object p2, p0, Lb/a/a/b$c$3;->a:Lb/a/a/b$b;

    iput-object p3, p0, Lb/a/a/b$c$3;->b:Ljava/util/List;

    iput p4, p0, Lb/a/a/b$c$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1434
    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c$3;->a:Lb/a/a/b$b;

    invoke-static {v0}, Lb/a/a/b$b;->b(Lb/a/a/b$b;)Lb/a/a/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/b$c$3;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lb/a/a/b$c$3;->a:Lb/a/a/b$b;

    invoke-static {v0}, Lb/a/a/b$b;->b(Lb/a/a/b$b;)Lb/a/a/b$e;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/b$c$3;->a:Lb/a/a/b$b;

    invoke-static {v1}, Lb/a/a/b$b;->e(Lb/a/a/b$b;)I

    move-result v1

    iget v2, p0, Lb/a/a/b$c$3;->c:I

    iget-object v3, p0, Lb/a/a/b$c$3;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/b$e;->a(IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    :cond_0
    iget-object v0, p0, Lb/a/a/b$c$3;->d:Lb/a/a/b$c;

    invoke-static {v0}, Lb/a/a/b$c;->a(Lb/a/a/b$c;)V

    .line 1442
    return-void

    .line 1441
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/b$c$3;->d:Lb/a/a/b$c;

    invoke-static {v1}, Lb/a/a/b$c;->a(Lb/a/a/b$c;)V

    throw v0
.end method
