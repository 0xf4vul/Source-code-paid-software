.class final Lcom/piriform/ccleaner/b/b/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Ljava/lang/Throwable;",
        "Lcom/piriform/ccleaner/b/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/b/b/d;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/b/d;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/d$1;->a:Lcom/piriform/ccleaner/b/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Lcom/piriform/ccleaner/b/b/b;->a:Lcom/piriform/ccleaner/b/b/b;

    .line 72
    return-object v0
.end method
