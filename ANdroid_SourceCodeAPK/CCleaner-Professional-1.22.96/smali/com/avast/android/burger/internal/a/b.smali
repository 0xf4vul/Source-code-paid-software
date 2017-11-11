.class public final Lcom/avast/android/burger/internal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/avast/a/b/a/a$c;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/avast/android/burger/internal/a/a;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/avast/android/burger/internal/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/burger/internal/a/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/a;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-boolean v0, Lcom/avast/android/burger/internal/a/b;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/avast/android/burger/internal/a/b;->b:Lcom/avast/android/burger/internal/a/a;

    .line 25
    sget-boolean v0, Lcom/avast/android/burger/internal/a/b;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_1
    iput-object p2, p0, Lcom/avast/android/burger/internal/a/b;->c:Ljavax/a/a;

    .line 27
    return-void
.end method

.method public static a(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avast/android/burger/internal/a/a;",
            "Ljavax/a/a",
            "<",
            "Lcom/avast/android/burger/b;",
            ">;)",
            "La/a/b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/avast/android/burger/internal/a/b;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/burger/internal/a/b;-><init>(Lcom/avast/android/burger/internal/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 11
    .line 1031
    iget-object v0, p0, Lcom/avast/android/burger/internal/a/b;->c:Ljavax/a/a;

    .line 1032
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/b;

    .line 1056
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    invoke-static {}, Lcom/avast/a/b/a/a$c;->e()Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    const-string/jumbo v3, "configVersion"

    .line 1059
    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$c$a;->a(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    .line 1496
    iget-wide v4, v0, Lcom/avast/android/burger/b;->t:J

    .line 1060
    invoke-virtual {v2, v4, v5}, Lcom/avast/a/b/a/a$c$a;->a(J)Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    .line 1061
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$c$a;->a()Lcom/avast/a/b/a/a$c;

    move-result-object v2

    .line 1057
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2426
    iget-object v2, v0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 1063
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1064
    invoke-static {}, Lcom/avast/a/b/a/a$c;->e()Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    const-string/jumbo v3, "partner_id"

    .line 1065
    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$c$a;->a(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    .line 3426
    iget-object v3, v0, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 1066
    invoke-virtual {v2, v3}, Lcom/avast/a/b/a/a$c$a;->b(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    move-result-object v2

    .line 1067
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$c$a;->a()Lcom/avast/a/b/a/a$c;

    move-result-object v2

    .line 1064
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3480
    :cond_0
    iget-object v0, v0, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    .line 1070
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1071
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/config/ABNTest;

    .line 1072
    if-eqz v0, :cond_1

    .line 1075
    invoke-static {}, Lcom/avast/a/b/a/a$c;->e()Lcom/avast/a/b/a/a$c$a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AB_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/avast/android/burger/internal/config/ABNTest;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1076
    invoke-virtual {v3, v4}, Lcom/avast/a/b/a/a$c$a;->a(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    move-result-object v3

    iget-object v0, v0, Lcom/avast/android/burger/internal/config/ABNTest;->b:Ljava/lang/String;

    .line 1077
    invoke-virtual {v3, v0}, Lcom/avast/a/b/a/a$c$a;->b(Ljava/lang/String;)Lcom/avast/a/b/a/a$c$a;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$c$a;->a()Lcom/avast/a/b/a/a$c;

    move-result-object v0

    .line 1075
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    :cond_2
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1031
    invoke-static {v1, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 11
    return-object v0
.end method
