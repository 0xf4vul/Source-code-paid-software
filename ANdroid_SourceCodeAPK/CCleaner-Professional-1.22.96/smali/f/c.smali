.class public final Lf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Throwable;

.field private final b:Lf/c$a;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lf/c;

    sget-object v1, Lf/c$a;->c:Lf/c$a;

    invoke-direct {v0, v1}, Lf/c;-><init>(Lf/c$a;)V

    sput-object v0, Lf/c;->d:Lf/c;

    return-void
.end method

.method private constructor <init>(Lf/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/c$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, Lf/c;->c:Ljava/lang/Object;

    .line 79
    iput-object v0, p0, Lf/c;->a:Ljava/lang/Throwable;

    .line 80
    iput-object p1, p0, Lf/c;->b:Lf/c$a;

    .line 81
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    .line 2126
    iget-object v2, p0, Lf/c;->b:Lf/c$a;

    .line 1153
    sget-object v3, Lf/c$a;->a:Lf/c$a;

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 107
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lf/c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1153
    goto :goto_0

    :cond_1
    move v0, v1

    .line 107
    goto :goto_1
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    .line 3126
    iget-object v2, p0, Lf/c;->b:Lf/c$a;

    .line 2135
    sget-object v3, Lf/c$a;->b:Lf/c$a;

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 117
    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lf/c;->a:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 2135
    goto :goto_0

    :cond_1
    move v0, v1

    .line 117
    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 217
    check-cast p1, Lf/c;

    .line 8126
    iget-object v2, p1, Lf/c;->b:Lf/c$a;

    .line 9126
    iget-object v3, p0, Lf/c;->b:Lf/c$a;

    .line 218
    if-ne v2, v3, :cond_0

    .line 222
    iget-object v2, p0, Lf/c;->c:Ljava/lang/Object;

    iget-object v3, p1, Lf/c;->c:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lf/c;->c:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/c;->c:Ljava/lang/Object;

    iget-object v3, p1, Lf/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :cond_3
    iget-object v2, p0, Lf/c;->a:Ljava/lang/Throwable;

    iget-object v3, p1, Lf/c;->a:Ljava/lang/Throwable;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lf/c;->a:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf/c;->a:Ljava/lang/Throwable;

    iget-object v3, p1, Lf/c;->a:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 193
    .line 6126
    iget-object v0, p0, Lf/c;->b:Lf/c$a;

    .line 193
    invoke-virtual {v0}, Lf/c$a;->hashCode()I

    move-result v0

    .line 194
    invoke-direct {p0}, Lf/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    .line 7098
    iget-object v1, p0, Lf/c;->c:Ljava/lang/Object;

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_0
    invoke-direct {p0}, Lf/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    mul-int/lit8 v0, v0, 0x1f

    .line 8089
    iget-object v1, p0, Lf/c;->a:Ljava/lang/Throwable;

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4126
    iget-object v1, p0, Lf/c;->b:Lf/c$a;

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-direct {p0}, Lf/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5098
    iget-object v2, p0, Lf/c;->c:Ljava/lang/Object;

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-direct {p0}, Lf/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6089
    iget-object v2, p0, Lf/c;->a:Ljava/lang/Throwable;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
