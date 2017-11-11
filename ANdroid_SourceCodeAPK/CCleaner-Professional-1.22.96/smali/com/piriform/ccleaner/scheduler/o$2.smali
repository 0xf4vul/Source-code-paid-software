.class final Lcom/piriform/ccleaner/scheduler/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/scheduler/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lcom/piriform/ccleaner/o/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/scheduler/o;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/scheduler/o;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/piriform/ccleaner/scheduler/o$2;->a:Lcom/piriform/ccleaner/scheduler/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/piriform/ccleaner/o/g;

    .line 1090
    invoke-interface {p1}, Lcom/piriform/ccleaner/o/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/piriform/ccleaner/scheduler/o$2;->a:Lcom/piriform/ccleaner/scheduler/o;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/scheduler/o;->c()V

    .line 87
    :cond_0
    return-void
.end method
