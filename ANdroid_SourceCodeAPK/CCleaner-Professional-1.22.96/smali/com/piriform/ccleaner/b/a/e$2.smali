.class final Lcom/piriform/ccleaner/b/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/b/a/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/a/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/b/a/e$2;->a:Lcom/piriform/ccleaner/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/b/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/e",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/e$2;->a:Lcom/piriform/ccleaner/b/a/e;

    .line 1014
    iget-object v0, v0, Lcom/piriform/ccleaner/b/a/e;->d:Lcom/google/firebase/b/a;

    .line 51
    invoke-virtual {v0}, Lcom/google/firebase/b/a;->b()Z

    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/e$2;->a:Lcom/piriform/ccleaner/b/a/e;

    .line 2014
    iget-object v0, v0, Lcom/piriform/ccleaner/b/a/e;->e:Lcom/piriform/ccleaner/b/a/f;

    .line 52
    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/e$2;->a:Lcom/piriform/ccleaner/b/a/e;

    invoke-static {v1}, Lcom/piriform/ccleaner/b/a/e;->a(Lcom/piriform/ccleaner/b/a/e;)Lcom/piriform/ccleaner/b/a/c;

    move-result-object v1

    .line 2018
    iget-object v0, v0, Lcom/piriform/ccleaner/b/a/f;->a:Lcom/piriform/ccleaner/b/a/d;

    .line 2020
    iget-object v2, v0, Lcom/piriform/ccleaner/b/a/d;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v3, "burgerRemoteConfig"

    iget-object v0, v0, Lcom/piriform/ccleaner/b/a/d;->b:Lcom/google/gson/e;

    .line 2022
    invoke-virtual {v0, v1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2020
    invoke-virtual {v2, v3, v0}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/e$2;->a:Lcom/piriform/ccleaner/b/a/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/e$2;->a:Lcom/piriform/ccleaner/b/a/e;

    invoke-static {v1}, Lcom/piriform/ccleaner/b/a/e;->a(Lcom/piriform/ccleaner/b/a/e;)Lcom/piriform/ccleaner/b/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/b/a/e;->a(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
