.class final Lcom/piriform/ccleaner/cleaning/advanced/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/t;->call(Lf/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/piriform/ccleaner/cleaning/advanced/t;

.field final synthetic val$asyncEmitter:Lf/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/t;Lf/a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/t;

    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->val$asyncEmitter:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/google/firebase/database/b;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->val$asyncEmitter:Lf/a;

    invoke-virtual {p1}, Lcom/google/firebase/database/b;->b()Lcom/google/firebase/database/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lf/a;->onError(Ljava/lang/Throwable;)V

    .line 41
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/t;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/t;->access$100(Lcom/piriform/ccleaner/cleaning/advanced/t;)Lcom/google/firebase/database/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/d;->b(Lcom/google/firebase/database/n;)V

    .line 42
    return-void
.end method

.method public final onDataChange(Lcom/google/firebase/database/a;)V
    .locals 2

    .prologue
    .line 26
    .line 1000
    iget-object v0, p1, Lcom/google/firebase/database/a;->a:Lcom/google/android/gms/internal/lm;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 1000
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 26
    :goto_0
    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/t;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/t;->access$000(Lcom/piriform/ccleaner/cleaning/advanced/t;)Lcom/google/firebase/database/g;

    move-result-object v0

    .line 3000
    iget-object v1, p1, Lcom/google/firebase/database/a;->a:Lcom/google/android/gms/internal/lm;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 3000
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mx;->a(Ljava/lang/Object;Lcom/google/firebase/database/g;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->val$asyncEmitter:Lf/a;

    invoke-interface {v1, v0}, Lf/a;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->val$asyncEmitter:Lf/a;

    invoke-interface {v0}, Lf/a;->onCompleted()V

    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->this$0:Lcom/piriform/ccleaner/cleaning/advanced/t;

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/t;->access$100(Lcom/piriform/ccleaner/cleaning/advanced/t;)Lcom/google/firebase/database/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/d;->b(Lcom/google/firebase/database/n;)V

    .line 36
    return-void

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/t$1;->val$asyncEmitter:Lf/a;

    invoke-interface {v1, v0}, Lf/a;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
