.class public final Lcom/google/android/gms/internal/yl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/l;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/location/Location;

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/zzhc;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/zzhc;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/zzhc;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/yl;->a:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/yl;->b:I

    iput-object p3, p0, Lcom/google/android/gms/internal/yl;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/yl;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/yl;->d:Z

    iput p6, p0, Lcom/google/android/gms/internal/yl;->f:I

    iput-object p7, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iput-object p8, p0, Lcom/google/android/gms/internal/yl;->h:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/yl;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/yl;->b:I

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->e:Landroid/location/Location;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/yl;->f:I

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/yl;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/yl;->i:Z

    return v0
.end method

.method public final h()Lcom/google/android/gms/ads/formats/b;
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/formats/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/b$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzhc;->b:Z

    .line 1000
    iput-boolean v1, v0, Lcom/google/android/gms/ads/formats/b$a;->a:Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->c:I

    .line 2000
    iput v1, v0, Lcom/google/android/gms/ads/formats/b$a;->b:I

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzhc;->d:Z

    .line 3000
    iput-boolean v1, v0, Lcom/google/android/gms/ads/formats/b$a;->c:Z

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->a:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->e:I

    .line 4000
    iput v1, v0, Lcom/google/android/gms/ads/formats/b$a;->e:I

    .line 0
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget v1, v1, Lcom/google/android/gms/internal/zzhc;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhc;->f:Lcom/google/android/gms/internal/zzft;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/ads/h$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/h$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/yl;->g:Lcom/google/android/gms/internal/zzhc;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhc;->f:Lcom/google/android/gms/internal/zzft;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzft;->a:Z

    .line 5000
    iput-boolean v2, v1, Lcom/google/android/gms/ads/h$a;->a:Z

    .line 6000
    new-instance v2, Lcom/google/android/gms/ads/h;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/ads/h;-><init>(Lcom/google/android/gms/ads/h$a;B)V

    .line 7000
    iput-object v2, v0, Lcom/google/android/gms/ads/formats/b$a;->d:Lcom/google/android/gms/ads/h;

    .line 0
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b$a;->a()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->h:Ljava/util/List;

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/yl;->h:Ljava/util/List;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
