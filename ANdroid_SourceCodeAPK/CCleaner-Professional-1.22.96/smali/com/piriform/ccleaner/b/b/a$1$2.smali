.class final Lcom/piriform/ccleaner/b/b/a$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/b/a$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a;

.field final synthetic b:Lcom/piriform/ccleaner/b/b/a$1;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/b/a$1;Lf/a;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/a$1$2;->b:Lcom/piriform/ccleaner/b/b/a$1;

    iput-object p2, p0, Lcom/piriform/ccleaner/b/b/a$1$2;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a$1$2;->a:Lf/a;

    invoke-interface {v0, p1}, Lf/a;->onError(Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method
