.class final Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/x$2;->call(Lf/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/c",
        "<",
        "Lcom/google/firebase/auth/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/x$2;

.field final synthetic val$firebaseUserAsyncEmitter:Lf/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/x$2;Lf/a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/x$2;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;->val$firebaseUserAsyncEmitter:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcom/google/firebase/auth/a;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;->val$firebaseUserAsyncEmitter:Lf/a;

    invoke-interface {p1}, Lcom/google/firebase/auth/a;->a()Lcom/google/firebase/auth/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a;->onNext(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;->val$firebaseUserAsyncEmitter:Lf/a;

    invoke-interface {v0}, Lf/a;->onCompleted()V

    .line 67
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/google/firebase/auth/a;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;->onSuccess(Lcom/google/firebase/auth/a;)V

    return-void
.end method
