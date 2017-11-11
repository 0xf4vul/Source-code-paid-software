.class final Lcom/google/android/gms/internal/td$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/td;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/td;

.field private final b:Lcom/google/android/gms/internal/za;

.field private final c:Lcom/google/android/gms/internal/aaw;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/td;Lcom/google/android/gms/internal/za;Lcom/google/android/gms/internal/aaw;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/td$a;->a:Lcom/google/android/gms/internal/td;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/td$a;->b:Lcom/google/android/gms/internal/za;

    iput-object p3, p0, Lcom/google/android/gms/internal/td$a;->c:Lcom/google/android/gms/internal/aaw;

    iput-object p4, p0, Lcom/google/android/gms/internal/td$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->c:Lcom/google/android/gms/internal/aaw;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/aaw;->c:Lcom/google/android/gms/internal/afg;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->b:Lcom/google/android/gms/internal/za;

    iget-object v1, p0, Lcom/google/android/gms/internal/td$a;->c:Lcom/google/android/gms/internal/aaw;

    iget-object v1, v1, Lcom/google/android/gms/internal/aaw;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->c:Lcom/google/android/gms/internal/aaw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/aaw;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->b:Lcom/google/android/gms/internal/za;

    const-string/jumbo v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 1000
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->b:Lcom/google/android/gms/internal/za;

    iget-object v1, p0, Lcom/google/android/gms/internal/td$a;->c:Lcom/google/android/gms/internal/aaw;

    iget-object v1, v1, Lcom/google/android/gms/internal/aaw;->c:Lcom/google/android/gms/internal/afg;

    .line 2000
    iget-object v2, v0, Lcom/google/android/gms/internal/za;->d:Lcom/google/android/gms/internal/aaw$a;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/za;->d:Lcom/google/android/gms/internal/aaw$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/aaw$a;->a(Lcom/google/android/gms/internal/afg;)V

    goto :goto_1

    .line 0
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/td$a;->b:Lcom/google/android/gms/internal/za;

    const-string/jumbo v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/za;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
