.class final Lcom/google/android/gms/internal/lh$1;
.super Lcom/google/android/gms/internal/lg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lh;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/lh$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lh$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lh$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lh$1;->a:Lcom/google/android/gms/internal/lh$a;

    invoke-direct {p0}, Lcom/google/android/gms/internal/lg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/lh$1;->a:Lcom/google/android/gms/internal/lh$a;

    .line 2000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/lh$a;->c()V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/lh$a;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/lh$a;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/lh$a;->a:Ljava/lang/StringBuilder;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/lh$a;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/lf;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/lh$a;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/google/android/gms/internal/lh$a;->d:I

    iget-object v2, v0, Lcom/google/android/gms/internal/lh$a;->b:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/lh$a;->b:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v1, v0, Lcom/google/android/gms/internal/lh$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/lh$a;->d:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/lh$a;->e:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/lh$1;->a:Lcom/google/android/gms/internal/lh$a;

    .line 3000
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/lh;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/lh$a;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/lh$1;->a:Lcom/google/android/gms/internal/lh$a;

    .line 5000
    iget v1, v0, Lcom/google/android/gms/internal/lh$a;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/lh$a;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lh$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/lh$a;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/lh$a;->e:Z

    .line 0
    return-void

    .line 2000
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/lh$a;->b:Ljava/util/Stack;

    iget v2, v0, Lcom/google/android/gms/internal/lh$a;->d:I

    invoke-virtual {v1, v2, p1}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
