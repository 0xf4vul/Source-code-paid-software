.class final Lcom/b/a/c/h$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/c/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/h;


# direct methods
.method constructor <init>(Lcom/b/a/c/h;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/b/a/c/h$11;->a:Lcom/b/a/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/b/a/c/h$11;->a:Lcom/b/a/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/c/h;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method
