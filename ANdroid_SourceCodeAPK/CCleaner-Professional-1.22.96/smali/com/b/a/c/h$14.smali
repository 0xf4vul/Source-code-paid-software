.class public final Lcom/b/a/c/h$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/b/a/c/h;


# direct methods
.method public constructor <init>(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/b/a/c/h$14;->d:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/h$14;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/b/a/c/h$14;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/b/a/c/h$14;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/b/a/c/h$14;->d:Lcom/b/a/c/h;

    invoke-virtual {v0}, Lcom/b/a/c/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/b/a/c/h$14;->d:Lcom/b/a/c/h;

    iget-object v1, p0, Lcom/b/a/c/h$14;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/b/a/c/h$14;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/b/a/c/h$14;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/b/a/c/h;->b(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 353
    :cond_0
    return-void
.end method
