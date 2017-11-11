.class final Lcom/piriform/ccleaner/p/a/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/e",
        "<-TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Lf/c/e;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Lf/c/e;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/c$4;->a:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/piriform/ccleaner/p/a/c$4;->b:Lf/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 77
    check-cast p1, Lf/e;

    .line 1080
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/c$4;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/c$4;->b:Lf/c/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/p/a/c$4;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lf/c/e;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/e;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/c$4;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/c$4;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1086
    :cond_1
    invoke-interface {p1}, Lf/e;->onCompleted()V

    goto :goto_0
.end method
