.class public final Lcom/b/a/c/h$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/b/a/c/h;


# direct methods
.method public constructor <init>(Lcom/b/a/c/h;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/b/a/c/h$13;->c:Lcom/b/a/c/h;

    iput-wide p2, p0, Lcom/b/a/c/h$13;->a:J

    iput-object p4, p0, Lcom/b/a/c/h$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    .line 1331
    iget-object v0, p0, Lcom/b/a/c/h$13;->c:Lcom/b/a/c/h;

    invoke-virtual {v0}, Lcom/b/a/c/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/b/a/c/h$13;->c:Lcom/b/a/c/h;

    invoke-static {v0}, Lcom/b/a/c/h;->c(Lcom/b/a/c/h;)Lcom/b/a/c/u;

    move-result-object v0

    iget-wide v2, p0, Lcom/b/a/c/h$13;->a:J

    iget-object v1, p0, Lcom/b/a/c/h$13;->b:Ljava/lang/String;

    .line 2071
    iget-object v0, v0, Lcom/b/a/c/u;->a:Lcom/b/a/c/s;

    invoke-interface {v0, v2, v3, v1}, Lcom/b/a/c/s;->a(JLjava/lang/String;)V

    .line 1334
    :cond_0
    const/4 v0, 0x0

    .line 328
    return-object v0
.end method
